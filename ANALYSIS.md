# Project Analysis — Studio109 "The 109 Explorer"

> Analysis date: 2026-07-08. Companion to [`MIGRATION.md`](MIGRATION.md) (migration-oriented
> deep dive) and [`README.md`](README.md) (screenshot gallery). This document records what the
> repository *is*: identity, provenance, contents, architecture, and condition.

## 1. Identity

**The 109 Explorer** (project name `Studio109`, product of "109 Studios") is a Windows
desktop application built in **Borland Delphi 7** (Object Pascal, Win32 VCL) between
roughly **2004 and 2007**. It is three products in one executable:

1. **Local media player / music library** — imports audio files from folders
   (MP1/MP2/MP3/MP4/WAV/WMA), with playlists, a persistent "Now Playing" queue, ratings,
   a 10-band equalizer, echo/reverb/flanger effects, and an FFT spectrum visualizer.
2. **Music portal client** — browses and searches a hosted catalog of artists, albums,
   tracks and mix sets ("109 Music"), with charts, streaming/download paths, listen
   limits, pricing hooks and favorites.
3. **Early social network client** ("Community") — member profiles with pictures, member
   directory search, friend connections with a pending/approval workflow and 1st/2nd-degree
   visibility, bulletin board posts, "What Are You Listening To" (WAYLT) posts, email
   invites, and deep links into an Invision Power Board forum at `www.109studios.com`.

This predates or is contemporaneous with early MySpace/Last.fm-era products — a music
player with a social graph bolted on, which makes it an interesting period piece as well
as a migration candidate.

Version identity (from `Studio109.dof`): `ProductName=The 109 Explorer`,
`CompanyName=109 Studios`, `FileVersion=1.0.0.0`, internal constant `cStudioVersion = '1.0'`.

## 2. Provenance and repository state

- Git repo with remote `https://github.com/dhouse109/sln-109.01.2004-music.explorer.git`.
- Only 4 commits (`Initial commit` → `initialize with files` → 2 × `update`) — this is an
  **archival snapshot**, not a living development history. The original VCS history (if any)
  did not survive.
- `LICENSE` is MIT, added 2025 — the archive was relicensed when published.
- `MIGRATION.md` (untracked at time of analysis) is a 2026 reverse-engineering document.
- Last build artifact is dated **2007-08-17** (`@build/Studio109.exe`), which bounds the
  end of active development.
- The **server side is lost**: the PHP scripts (`/db109/ide.php/data/*.php`), the
  `/mempics/` image store, and the forum are not in this repository. Only the MySQL DDL
  and the client's query contracts survive.

## 3. Repository inventory

| Path | Contents | Notes |
|---|---|---|
| `@project/Studio109/` | Full Delphi source: `Studio109.dpr/.dof/.cfg`, 27 `.pas` units, 26 paired `.dfm` forms, `.rc`/`.res` resources | ~14k lines of Object Pascal |
| `@project/Studio109/@db/db109/` | MySQL DDL/seed scripts for server DB `db109` (10 files) | Two schema generations present |
| `@project/Studio109/DB/` | `dbStudio109.mdb` — clean MS Access template of the local DB | Also embedded in the EXE as resource `dbStudio109` (`mod_dbStudio109.res`, 197 KB) |
| `@project/Studio109/@asset/` | Images (BMPs, icon strips, PSDs) and OCR-A Extended font | Font registered at runtime via `mod_Fonts.pas` |
| `@build/` | `Studio109.exe` (6.3 MB, 2007), BASS DLLs (`bass.dll`, `bass_fx.dll`, `basscd.dll`, `basswma.dll`, 2006 builds), **populated** `dbStudio109.mdb` (3.5 MB) + a 2006 copy, empty `Media/` | The `.mdb` files are the only surviving data samples |
| `docs/` and `@resource/@model/ess-model/` | ESS-Model UML/class-diagram HTML export of the source (two identical copies, `index.html` entry point) | Generated documentation of every class |
| `@resource/@screenshot/` | 24 JPG screenshots of the running app (login → profiles → charts) | Best surviving functional reference; mapped to forms in `README.md` |
| `www/` | 9 static HTML pages: marketing site (index, explorer tour, download, hosting, help, about, contact, press kit, privacy) | FrontPage-era HTML |

### Source metrics

27 units, ~14,000 lines total. The largest by far:

| Unit | Size | Role |
|---|---|---|
| `dat_Main.pas` | 3,390 lines / 122 KB (+1.2 MB `.dfm`) | God-object data module: **all** connectivity, auth, queries, image utils, settings, form management |
| `frm_MemberProfile.pas` | ~1,500 lines | Profile view/edit, picture upload, connections |
| `frm_Music.pas` | ~1,375 lines | Local library, playlists, now-playing |
| `frm_109Music.pas` | ~870 lines | Hosted catalog browse/search/download |
| `frm_Main.pas` | ~685 lines (+**2.5 MB** `.dfm`) | Player shell; the huge `.dfm` is embedded skin imagery |

Naming conventions: `frm_*` = form, `dat_*` = data module, `mod_*` = non-visual unit,
`*DLG` = modal dialog. All community modules descend from a common base `frm_AppModule`.

## 4. Architecture

Classic 3-tier thin client:

```
Delphi 7 VCL client (Studio109.exe, single-instance)
  ├─ frm_Main ─ player chrome, tray icon, visualizer, login gate
  ├─ frm_Community ─ tab host; child modules re-parented into tabs at runtime
  │    (Music, 109Music, 109Charts, WIPCharts, WAYLT, MemberProfile,
  │     MemberDirectory, BulletinBoard, About, embedded TWebBrowser → forums)
  └─ dat_Main (TDataModule) ─ the entire service layer:
       ├─ TADOConnection → local dbStudio109.mdb (Jet 4.0, beside the EXE)
       ├─ TBassPlayer → bass*.dll (playback, EQ, FX, FFT)
       ├─ TIEHTTP (WinInet) → HTTP GET → XML → TdxMemData in-memory datasets
       └─ TRegistry → HKLM\Software\109 Studios\109Studios.com (settings)
            │
            ▼  http://<host>/db109/ide.php/data/<query>.php?param=...
Apache 2 + PHP 5 (lost) ──> MySQL 5 `db109` (MyISAM)
```

Key mechanics, verified in source:

- **Module hosting** — `dat_Main.MergeForm` / `CreateAndMergeForm` / `CloseAndDestroy`
  re-parent forms into panels/tabs; a home-grown single-window "SPA" pattern
  (dat_Main.pas:820–894).
- **Startup** — register OCR-A font, create `datMain` then `frmMain` (`Studio109.dpr`);
  `DataModuleCreate` extracts the local `.mdb` from the EXE's resources if missing
  (`ExtractAndSaveLocalDB`, dat_Main.pas:3161), builds the Jet connection string, restores
  the Now Playing queue from Access into memory, and applies registry-persisted EQ/FX.
- **Protocol convention** — the PHP script name *is* the client dataset name:
  `QueryServer(ADataset.Name + '.php', ...)` (dat_Main.pas:897–907). Responses are XML,
  bound **positionally** to dataset fields (`DatasetLoadXML`, dat_Main.pas:952 — walks row
  elements in order into `Fields[i+1]`), so server column order is load-bearing.
- **Writes** go through generic `qryGenericInsert.php` / `qryGenericUpdate.php` endpoints
  that take the target table name as a parameter (dat_Main.pas:1184).
- **Auth** — `SignIn` sends `username`/`password` as cleartext GET params and checks the
  echoed row client-side (dat_Main.pas:1035–1064). No TLS, no session token.
- **Host** — compile-time constant `c109Forums_Host = 'localhost'` in this checkout;
  production was `www.109studios.com` (dat_Main.pas:19).

## 5. Data stores

**Local (Access/Jet, `dbStudio109.mdb`)** — `tblTracks` (library with tag-derived
`AV*` columns), `tblPlaylists`, `tblPlaylist_Tracks`, `tblNowPlaying` (persisted queue).

**Server (MySQL `db109`, all MyISAM — no FK enforcement)**:

- Social: `tblMems` (30-column member profile; `Password varchar(32)` — MD5-shaped),
  `tblMems_Connects` (friend graph with `ConnectPending`), `tblMems_BB` (bulletin board
  with audience lookup `tblLUMessageTo`).
- Catalog: `tblArtists`, `tblAlbums`, `tblTracks` (with `StreamPath`/`DLPath`,
  `ListenLimit`, `Price_ID`), `tblMems_DL` (download log), `tblMems_Fav`, plus lookups
  (`tblLUGenres`, `tblLUSubGenres`, `tblLULocations`, `tblLUPrice`, `tblLURecLabels`).
- **Two schema generations** exist: `medialib-create-1.sql` (newer, normalized) and
  `medialib-create-2.sql` (older Access export). Note `medialib-create-1.sql` contains
  trailing-comma syntax errors before `) TYPE=MyISAM` (lines 23–24, 48–49, 76–77) — it
  will not run as-is and was evidently hand-edited after export.

## 6. Dependencies (all discontinued or license-bound)

| Dependency | Evidence | Status |
|---|---|---|
| Delphi 7 + VCL | `.dof` `Version=7.0`, `RootDir=C:\Program Files\Borland\Delphi7` | EOL, pre-Unicode |
| DevExpress cx*/dx* (QuantumGrid, VerticalGrid, Layout, Docking, `TdxMemData`) | `.dof` packages `cxGridVCLD7`, `cxGridUtilsVCLD7`; pervasive in every unit | Commercial; D7-era versions unobtainable |
| BASS 2.x + `BassPlayer` wrapper (un4seen) | `uses BassPlayer`; DLLs in `@build/` | BASS still exists (licensed); wrapper is abandonware |
| `IEHTTP3` (WinInet wrapper) | `uses IEHTTP3` | Abandonware; HTTP-only |
| MSXML via `TXMLDocument`/`msxmldom` | dat_Main.pas uses | Works but Windows-only |
| Jet 4.0 OLEDB (`Microsoft.Jet.OLEDB.4.0`) | ADO connection string | 32-bit only |
| Freeware VCL: `CoolTrayIcon`, `TMarquee`, `Knob`, `slider`, `GIFImage`, `ThdTimer`, `adpInstanceControl` | uses clauses across forms | Torry-era abandonware |

Consequence: **the project cannot be recompiled today** without sourcing a Delphi 7
install plus these exact component versions. The 2007 EXE in `@build/` is the only
runnable artifact, and it is 32-bit with HKLM-registry admin quirks.

## 7. Notable findings

1. The entire non-UI application lives in one 3,390-line data module (`dat_Main.pas`) —
   HTTP client, XML parsing, auth, ~40 server query methods, JPEG/BMP image resizing,
   pagination helpers, registry settings, and window management. Any modernization starts
   by decomposing this unit.
2. Security is 2004-vintage: cleartext credentials over HTTP GET, generic
   table-name-as-parameter write endpoints, client-side auth verification, MD5-length
   password column. Documented with remediation notes in `MIGRATION.md` §8.
3. Failure handling is `except //` (swallow) throughout the data layer — network failures
   manifest as silently empty grids.
4. The registry code (`LoadAppVars`, dat_Main.pas:3177+) hand-unrolls all ten EQ bands and
   every setting into copy-pasted if/else blocks — representative of the codebase's style.
5. Pagination is client-driven at 10 records/page (`cRECORDS_BY_PAGE`), with
   `Record_Start`/`Records_Total` params on every list query.
6. Hardcoded member group IDs (4 = Admin, 6 = Resident) and Invision forum URL codes are
   scattered as magic values.
7. The `.dfm` files embed all skin bitmaps (`frm_Main.dfm` alone is 2.5 MB), which is why
   the EXE is 6.3 MB in 2007 terms.

## 8. Documentation map

| Document | Purpose |
|---|---|
| `README.md` | Gallery: screenshot → form mapping, stack keyword summary |
| `MIGRATION.md` | Reverse-engineered migration reference: full endpoint inventory (§6.3), registry map (§5), risk register (§8), functional inventory to preserve (§9), modernization mapping (§10) |
| `ANALYSIS.md` (this file) | Repository identity, provenance, inventory, architecture, condition |
| `docs/index.html` | Generated ESS-Model class diagrams for every unit |
| `@resource/@screenshot/` | 24 UI screenshots of the running product |
