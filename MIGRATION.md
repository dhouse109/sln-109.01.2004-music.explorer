# Legacy Migration Documentation — Studio109 "The 109 Explorer"

> Analysis snapshot: 2026-07-08. Covers the full contents of this repository for use as
> the reference document in a future migration off the legacy stack.

## 1. What this application is

**The 109 Explorer** (internal name `Studio109`, ~2004–2007) is a Windows desktop
application combining:

- a **local music library / media player** (MP1/MP2/MP3/MP4/WAV/WMA playback, playlists,
  "Now Playing" queue, equalizer, echo/reverb/flanger effects, FFT spectrum visualizer),
- a **music portal client** for browsing/searching a hosted catalog of artists, albums,
  tracks and mix sets ("109 Music", charts, downloads),
- an early **social network client** ("Community"): member profiles with pictures,
  member directory search, friend connections with approval workflow (1st/2nd degree),
  bulletin board messages, "What Are You Listening To" (WAYLT) posts, invite-friends,
  and deep links into a phpBB/Invision-style web forum at `www.109studios.com`.

It is a classic 3-tier thin-client design: Delphi 7 VCL client → PHP scripts over HTTP
returning XML → MySQL 5 server database, plus a local MS Access (Jet) database for the
music library on the client machine.

## 2. Repository layout

| Path | Contents |
|---|---|
| `@project/Studio109/` | All Delphi source: `.dpr`, `.dof`, `.cfg`, 27 `.pas` units + paired `.dfm` form files, `.rc`/`.res` resources |
| `@project/Studio109/@db/db109/` | MySQL DDL scripts for the **server** database `db109` |
| `@project/Studio109/DB/dbStudio109.mdb` | Template of the **local** Access database (270 KB, empty schema) |
| `@project/Studio109/@asset/` | Images (BMPs, JPGs, PSDs, icon strips) and the OCR-A Extended font (`OCRAEXT.TTF`) |
| `@build/` | Last built binary `Studio109.exe` (2007-08-17), BASS audio DLLs (`bass.dll`, `bass_fx.dll`, `basscd.dll`, `basswma.dll`), populated `dbStudio109.mdb`, empty `Media/` folder |
| `docs/` and `@resource/@model/ess-model/` | Generated ESS-Model UML/class-diagram HTML export of the source (two copies) |
| `@resource/@screenshot/` | 20+ UI screenshots referenced by `README.md` — the best functional reference available |
| `www/` | Static marketing site (FrontPage-era HTML): home, download, tour, hosting, help, about, press kit, privacy |

Naming conventions in source: `frm_*` = form/UI unit, `dat_*` = data module,
`mod_*` = non-visual utility unit, `*DLG` suffix = modal dialog.

## 3. Technology stack (all EOL — migration blockers in bold)

| Layer | Technology | Notes |
|---|---|---|
| Language/IDE | **Borland Delphi 7** (Object Pascal, Win32 VCL) | `.dof` targets Delphi 7.0; pre-Unicode Delphi (AnsiString) |
| UI components | **DevExpress ExpressQuantumGrid/VerticalGrid/Layout/Bars/Docking (cx*/dx* D7 era)** | Pervasive: every grid, layout, tab, style. Commercial license required to even recompile |
| Audio | **BASS 2.x via `BassPlayer` Delphi wrapper** (un4seen) + `bass.dll`, `basswma.dll`, `bass_fx.dll`, `basscd.dll` | Playback, EQ (10-band gains, though only bands 0–8 wired to sliders), echo/reverb/flanger, FFT band output, Winamp vis-plugin support (`PluginCtrl`, `QuitVisPlugin`) |
| Local DB | **MS Access / Jet 4.0 via ADO** (`Microsoft.Jet.OLEDB.4.0`) | 32-bit only provider; DB auto-extracted from an embedded resource on first run (`ExtractAndSaveLocalDB`, resource `resdbStudio109`) |
| HTTP client | **`IEHTTP3` (TIEHTTP)** — wraps WinInet/IE | Plain HTTP GET only; progress via `OnPacketRead` |
| XML | MSXML via Delphi `TXMLDocument`/`msxmldom` | Hand-rolled XML→dataset mapping (positional, see §6.3) |
| In-memory datasets | DevExpress `TdxMemData` | All server data lands in these |
| Server (not in repo) | Apache 2 + **PHP 5** scripts + **MySQL 5 (MyISAM)** | Only the MySQL DDL and the script names/param contracts survive in this repo; **PHP source is lost** |
| Misc 3rd-party | `CoolTrayIcon`, `TMarquee`, `Shapes`, `Knob`, `slider`, `GIFImage`, `ThdTimer` (threaded timer), `adpInstanceControl` (single-instance), `appexec` | Typical Torry-era freeware VCL components |
| Fonts | OCR-A Extended, registered at runtime from `Fonts\OCRAEXT.TTF` (`mod_Fonts.RegisterStudio109Fonts`, `AddFontResource`) | |

Version identity: `ProductName=The 109 Explorer`, `CompanyName=109 Studios`,
`FileVersion=1.0.0.0`, `cStudioVersion = '1.0'`.

## 4. Runtime architecture

```
┌──────────────────────────────── Windows client ────────────────────────────────┐
│ Studio109.exe (Delphi 7 VCL, single instance)                                  │
│                                                                                │
│  frm_Main ── media player chrome, tray icon, spectrum vis, volume/position     │
│     │                                                                          │
│  frm_Community (tab host, TcxPageControl) ── embedded child "modules"          │
│     ├─ frm_Music            local library / playlists / now playing           │
│     ├─ frm_109Music         hosted catalog browse/search/download             │
│     ├─ frm_109Charts        top downloads/plays charts                        │
│     ├─ frm_WIPCharts        WAYLT ("WIP") boards charts                       │
│     ├─ frm_WAYLT            "what are you listening to" posts                 │
│     ├─ frm_MemberProfile    own + others' profiles, connections, pics         │
│     ├─ frm_MemberDirectory  member search + pagination                        │
│     ├─ frm_BulletinBoard    BB messages                                       │
│     ├─ frm_About            about                                             │
│     └─ tabForums            TWebBrowser → www.109studios.com/forums           │
│  Dialogs: Splash/Login, AddFolder (library import), Playlist, AddToPlaylist,  │
│           Equalizer, SoundEffects, Options, TrackInfo, BulletinBoardDLG,      │
│           WAYLTDLG, StartConnection, InviteFriends, EditProfilePic            │
│                                                                                │
│  dat_Main (TDataModule, 3389 lines) ── the entire data/service layer          │
│     ├─ TADOConnection → dbStudio109.mdb (Jet 4.0, beside the EXE)             │
│     ├─ TBassPlayer → bass*.dll                                                │
│     ├─ TIEHTTP → HTTP GET, XML responses → TdxMemData datasets                │
│     └─ TRegistry → HKLM\Software\109 Studios\109Studios.com (settings)        │
└────────────────────────────────────────────────────────────────────────────────┘
                       │ HTTP GET  http://<host>/db109/ide.php/data/<script>.php?...
                       ▼
        Apache 2 + PHP 5 ("109 Forums" server, default host `localhost`,
        production `www.109studios.com`; member pics at /mempics/)
                       │
                       ▼
        MySQL 5 database `db109` (MyISAM) — schema in @project/Studio109/@db/db109
```

Key mechanics:

- **Module hosting**: child forms are created and re-parented into panels/tabs via
  `dat_Main.MergeForm` / `CreateAndMergeForm` / `CloseAndDestroy` — the app's
  home-grown "SPA" pattern. All modules descend from `frm_AppModule`.
- **App entry** (`Studio109.dpr`): register fonts → create `datMain` → create `frmMain`
  → run. Login (`frmMain.DoLogin` → `datMain.SignIn`) gates the Community module.
- **Startup** (`TdatMain.DataModuleCreate`, dat_Main.pas:651): create BASS player, read
  registry settings, extract local `.mdb` if missing, build the Jet connection string,
  open tables, restore the Now Playing queue from the persistent `tblNowPlaying_` ADO
  table into the in-memory `tblNowPlaying`, apply EQ/FX settings, verify BASS DLLs.
- **Shutdown** reverses this: Now Playing queue is written back to Access.
- **Update check**: `Studio109_UpdateRequired` compares `cStudioVersion` against a
  server value; local DB can be re-extracted from the EXE's resources.

## 5. Client settings (registry)

`HKLM\Software\109 Studios\109Studios.com\` (note: **HKLM**, requires admin on modern
Windows — a migration must move this to per-user storage):

| Value | Type | Default | Meaning |
|---|---|---|---|
| `EQ0`…`EQ9` | float | 0 | 10-band equalizer gains |
| `EchoLevel`, `ReverbLevel` | int | 16 | FX levels |
| `UseEQ`, `UseEcho`, `UseReverb`, `UseFlanger` | bool | false | FX toggles |
| `LoopNowPlaying` | bool | true | repeat queue |
| `MediaFolder` | string | `<exe dir>\Media\` | download/import folder |

## 6. Data model

### 6.1 Local database (Access `dbStudio109.mdb`, via ADO/Jet)

Inferred from the ADO components and persistent fields in `dat_Main.pas`:

- **`tblTracks`** — the local library. `ID` (autoinc), `FilePath`, `FileName`,
  `FileSize`, `FileSizeText`, `Rating`, `DateCreated`, `DateImported`, and tag-derived
  `AVTitle`, `AVDuration`, `AVArtist`, `AVAlbum`, `AVGenre`, `AVSampleRate`,
  `AVBitRate`, `AVMode`, `AVTrackPlaylist` (memo).
- **`tblPlaylists`** — `ID`, `Name`, `Description`, `DateCreated`.
- **`tblPlaylist_Tracks`** — `ID`, `Playlist_ID`, `TrackNum`, `Track_ID` (joined to
  tracks by `qryPlaylist_Tracks` TADOQuery).
- **`tblNowPlaying`** — persisted play queue (`Track_ID` list), loaded into an
  in-memory copy at startup and written back at exit.

Copies: `@project/Studio109/DB/dbStudio109.mdb` (clean template, also embedded in the
EXE as resource `resdbStudio109` via `mod_dbStudio109.rc/.res`), `@build/dbStudio109.mdb`
(populated, 3.5 MB, last touched 2007).

### 6.2 Server database (MySQL `db109`, MyISAM)

DDL in `@project/Studio109/@db/db109/`:

**Social / membership**
- `tblMems` — members: credentials (`Name`, `Password` varchar(32) — likely MD5,
  matches forum integration), `Email`, profile (nickname, first/last name, gender,
  country/city/state/zip/location/hometown, avatar, AIM/MSN/Yahoo handles, occupation,
  schools, about-me, website/blog/photo-album URLs, `ListInDirectory`, birthday parts).
- `tblMems_Connects` — friend graph: `Mem_ID` + `Connect_Mem_ID` (composite PK),
  `Connect_EMail`, `ConnectPending` (approval workflow).
- `tblMems_BB` — bulletin board posts: `Mem_ID`, date/time posted, `BBTitle`,
  `BBMessage`, `BBMessageTo_ID` (audience, via lookup `tblLUMessageTo`).

**Media catalog** (two generations exist — `medialib-create-1.sql` is the newer
normalized design; `medialib-create-2.sql` is an older Access export):
- `tblArtists` — name, genre/subgenre FK, record label FK, location, website, images,
  `Active` flag.
- `tblAlbums` — title, artist FK, genre, label, total length/tracks, release dates,
  price FK, `Active`.
- `tblTracks` — artist/album/genre FKs, track number, title, length, `ListenLimit`,
  **`StreamPath` / `DLPath`** (streaming vs download URLs), price, channels,
  sample rate, bit rate, `Active`.
- `tblFiles` (v2) — physical files with `STPath`/`DLPath` and `STServer`/`DLServer`.
- `tblMems_DL` — per-member download log; `tblMems_Fav` — favorite artists w/ memo.
- Lookups: `tblLUGenres`, `tblLUSubGenres`, `tblLULocations`, `tblLUPrice`,
  `tblLURecLabels`, `tblLUMessageTo`.

Caveats for migration: `TYPE=MyISAM` (no FK constraints anywhere — integrity is
app-enforced), `0000-00-00` date defaults, `medialib-create-1.sql` has trailing-comma
syntax errors (`KEY ... ,) TYPE=MyISAM`) so it was likely hand-edited after export.

### 6.3 Client↔server protocol (the contract to re-implement)

- Base URL: `c109Forums_URL = http://<host>/db109/ide.php/data/` (dat_Main.pas:19-21;
  host is `localhost` in this checkout — production was `www.109studios.com`).
  Member pictures served from `http://<host>/mempics/`.
- Transport: **HTTP GET only**, params as query string, response is an XML document.
- Convention: the PHP script name equals the client dataset name
  (`QueryServerLoadXML` calls `<dataset name>.php`).
- **Positional field mapping**: `DatasetLoadXML` (dat_Main.pas:952) walks the XML row
  elements in order and assigns to `ADataset.Fields[i+1]` — field *order* in the
  TdxMemData components is the schema. Column order changes on the server break the
  client silently.
- Writes: `ConvertDatasetToXML` + `PostDataToServer` → `qryGenericInsert.php` /
  `qryGenericUpdate.php` with the table name as a parameter — i.e. the server exposed
  a generic insert/update gateway (a SQL-injection-shaped hole; do not reproduce).
- Auth: `SignIn` sends `username=&password=` **in the clear as GET params** and merely
  checks the returned row matches (dat_Main.pas:1035). Session state is client-side
  fields (`FMem_ID`, `FLoggedIn`); no token, no TLS.

Known endpoint inventory (from string literals in `dat_Main.pas`):

```
Auth/meta:      qryFindUserAndPass, qryServerDateTime, (update check)
Members:        qryMems, qryMems_Mem_Info, qryMems_1stDegree_Info,
                qryMems_GetMiniProfile_By_Mem_ID, qryMems_GetPicture_By_Mem_ID,
                qryMems_GetPictureThumb_By_Mem_ID, qryMems_ProfilePic_Save
Connections:    qryConn_MyConnections, qryConn_UserConnections, qryConn_MyApproval,
                qryConn_UserApproval, qryConn_*_Delete (×4), qryConn_MyApproval_Approve
Bulletin board: qryMems_BB_1stDegree, qryMems_BB_2ndDegree, qryMems_BB_Delete
WAYLT:          qryWAYLT_1stDegree, qryWAYLT_2ndDegree, qryWAYLT_All,
                qryWAYLT_Summary, qryWAYLT_Summary_Posts, qryWAYLT_Member
Catalog:        qryTracks_Search, qryAlbumProfile, qryArtistProfile,
                qryMems_DL_Summary, qryMems_Fav
Generic writes: qryGenericInsert, qryGenericUpdate
```

Pagination is client-driven: every list query carries `Record_Start`/`Records_Total`
fields, 10 records per page (`cRECORDS_BY_PAGE`), with `SetupPageNav`/`PageNav_*`
helpers driving combo-box page navigation.

Web integration (opened in browser or embedded TWebBrowser): forum profile/posts/PM/
inbox/compose/register/forgot-password/change-password/change-email URLs on
`www.109studios.com/forums/` (Invision Power Board URL patterns), plus home/about pages.

## 7. Form-by-form catalog

| Unit (lines) | Responsibility |
|---|---|
| `dat_Main.pas` (3389) | **Everything non-UI**: DB connections, HTTP/XML client, auth, all server queries, image resize/JPEG↔BMP, pagination, form merging, file-name utils, registry settings, launch-URL helpers. First refactor target — this is the app's service layer, God-object style |
| `frm_Main.pas` (685) | Shell window: player transport, volume/position trackbars, marquee title, time/spec toggle, FFT visualizer rendering, tray icon, opens EQ/FX/Options/TrackInfo/WAYLT dialogs, login flow, `PlayFile` |
| `frm_Community.pas` (419) | Tabbed module host + left icon nav; lazy-creates modules; sign-out |
| `frm_Music.pas` (1375) | Local library: track grid, playlists, now-playing queue, add-folder import (recursive scan by file mask), ratings, context menus, search hand-off to 109 Music |
| `frm_109Music.pas` (869) | Hosted catalog: browse 109 tracks/albums/artists, search, favorites, downloads |
| `frm_109Charts.pas` / `frm_WIPCharts.pas` (545 each) | Charts over downloads/plays and WAYLT boards, with demographic filters (genre, gender, city/state/country, school, age range) |
| `frm_WAYLT.pas` (611) + `frm_WAYLTDLG.pas` | WAYLT feed (1st/2nd degree/all) and post dialog |
| `frm_MemberProfile.pas` (1500) | Own/other profiles: mini-profile, full edit, profile pic upload (client-side resize via `ResizeImageFile`), connections management, forum links |
| `frm_MemberDirectory.pas` (590) | Member search (name/email/gender/group/state/school/fav-artists/country/age) with thumbnails |
| `frm_BulletinBoard.pas` (575) + `frm_BulletinBoardDLG.pas` | BB feed + post dialog |
| `frm_StartConnectionDLG.pas`, `frm_InviteFriendsDLG.pas` | Friend request + email invites (5 name/email pairs) |
| `frm_AddFolderDLG.pas` (466) | Library folder import with progress |
| `frm_PlaylistDLG.pas`, `frm_AddToPlaylistDLG.pas` | Playlist create / add-track |
| `frm_EqualizerDLG.pas`, `frm_SoundEffectsDLG.pas`, `frm_OptionsDLG.pas`, `frm_TrackInfoDLG.pas` | Player settings dialogs |
| `frm_Splash.pas` | Splash/login |
| `frm_About.pas`, `frm_AppModule.pas` (base class), `mod_Fonts.pas` (font registration) | Support units |

UI reference: `README.md` maps each screenshot in `@resource/@screenshot/` to its form.
Class diagrams for every unit are in `docs/index.html` (ESS-Model export).

## 8. Risks, defects and security notes to carry into migration planning

1. **Credentials in cleartext over HTTP GET** (logged in every proxy/server log);
   passwords stored as varchar(32) hashes at best. Must be replaced wholesale
   (TLS + token auth + modern hashing).
2. **Generic insert/update endpoints** driven by client-supplied table names — an
   open write gateway. Do not port; replace with explicit, validated endpoints.
3. **Positional XML→dataset binding** — schema drift breaks silently; replace with
   keyed serialization (JSON).
4. **HKLM registry writes** — fails without elevation on Vista+; move to per-user
   config.
5. **32-bit-only dependencies**: Jet 4.0 OLEDB provider, BASS DLLs shipped as x86,
   Delphi 7 output. The 2007 EXE still runs only as 32-bit with admin quirks.
6. Swallowed exceptions throughout the data layer (`except //` blocks) — failures are
   silent; behavior under network errors is "empty grid".
7. Widespread magic numbers/strings (member group IDs 4=Admin, 6=Resident hardcoded at
   dat_Main.pas:3377; forum URL query codes).
8. No FKs/transactions server-side (MyISAM); integrity rules live only in client code.
9. Duplicate/legacy schema generations (`medialib-create-1` vs `-2`) — reconcile before
   any data migration; the populated `.mdb` files in `@build/` are the only surviving
   data samples.
10. Commercial component lock-in (DevExpress D7-era, BassPlayer wrapper, IEHTTP3):
    the project **cannot be recompiled** without sourcing those exact libraries.
    The `.dof` also references CodeRush and ExpressLayout/Printing packages.

## 9. What must be preserved in a migration (functional inventory)

- Local music library: folder import with tag extraction, ratings, playlists,
  persistent now-playing queue, loop mode.
- Playback: MP3/WMA et al., 10-band EQ, echo/reverb/flanger, spectrum visualization,
  tray control, time-elapsed/remaining toggle.
- Hosted catalog: search/browse artists/albums/tracks/mix sets, stream vs download
  paths, listen limits, pricing hooks, download history, favorites, charts with
  demographic filtering.
- Social: profiles (+pictures with client-side resize), directory search with
  pagination, friend connections with pending/approve flow and 1st/2nd-degree
  visibility rules (feeds are filtered by connection degree), bulletin board with
  audience targeting, WAYLT posts, invites, forum SSO-ish deep links.
- Login-gated community with local player usable regardless.

## 10. Suggested modernization mapping (non-binding)

| Legacy | Modern equivalent |
|---|---|
| Delphi 7 VCL + DevExpress | Cross-platform UI (e.g. web app or .NET/Electron/Flutter desktop); grids/layouts are standard components now |
| dat_Main God-module | Separate API client, repository, settings, and media services |
| Access/Jet local DB | SQLite |
| PHP+XML positional protocol | REST/JSON (or GraphQL) with explicit schemas; endpoint inventory in §6.3 is the contract to re-specify |
| MySQL MyISAM schema | InnoDB/Postgres with real FKs; merge the two medialib generations |
| BASS DLLs | BASS is still maintained (licensing applies), or platform audio APIs |
| HKLM registry | Per-user config file |
| Forum URL integration | Retire or replace with modern community platform |

## 11. Build/run notes (as-was)

- Build: Delphi 7 IDE, output to `..\bin` (`.dof` `[Directories]`); requires DevExpress
  D7 packages (`cxGridVCLD7`, `cxGridUtilsVCLD7`), Intraweb 5.0-7.0, Rave, plus the
  freeware components listed in §3 installed in the IDE.
- Run: `Studio109.exe` with the four `bass*.dll` files beside it; creates/uses
  `dbStudio109.mdb` and `Media\` in the EXE folder; expects the PHP/MySQL server at
  `c109Forums_Host` (compile-time constant — `localhost` in this source).
- The server-side PHP (`/db109/ide.php/data/*.php`, `/mempics/`) and the forum are
  **not in this repository** and are presumed lost; §6.3 is their reverse-engineered
  contract.
