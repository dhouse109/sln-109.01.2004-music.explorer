# Prototype Build Spec — "The 109 Explorer" (Studio109, 2004)

> **Purpose**: Hand this document to an AI app builder (Lovable, Replit, Figma Make,
> v0, Claude, etc.) to recreate the original 2004 Windows application as a clickable
> web prototype. Everything needed is in this file: design system, layout, every
> screen, every dialog, navigation rules, seed data, and simulated behaviors.
>
> **Fidelity source**: this spec was reverse-engineered from the original Delphi 7
> source code and 24 screenshots of the running app (in `@resource/@screenshot/` —
> attach them alongside this document if the tool accepts images; they are the ground
> truth for look and feel).

---

## 1. One-paragraph brief

Build a single-page web app that faithfully recreates **"The 109 Explorer"**, a
2004-era Windows desktop application by "109 Studios" that combined a local MP3
player, a hosted music catalog, and an early social network (pre-dating MySpace's
peak). The prototype must look like a 2004 Windows XP program — a fixed 800×600
window with a red player chrome, gray link bars, and dark charcoal content panels —
and be fully clickable with simulated data and simulated audio playback. Do NOT
modernize the visual design; the retro look is the point.

## 2. Global frame (every screen after login)

The app is one fixed window, **800×600**, centered on a neutral page background.
From top to bottom:

```
┌──────────────────────────────────────────────────────────────────────────┐
│ (optional) XP-style blue title bar: "109 Studios Explorer"  [_][□][X]     │
├──────────────────────────────────────────────────────────────────────────┤
│ RED CHROME BAND (~72px, #C00000)                                          │
│  ◄   ▌▌   ►         ┌───────────────────────────┐        109 Studios     │
│ (transport buttons) │  BLACK LED DISPLAY PANEL   │       Inspired by Music│
│ ────────────        │  (see §2.2)                │      (script logo, wht)│
│ (seek slider)       └───────────────────────────┘                        │
├──────────────────────────────────────────────────────────────────────────┤
│ NAV BAR (gray #A0A0A0, ~22px): section links, bold underlined (§2.3)     │
├──────────────────────────────────────────────────────────────────────────┤
│ SUB-NAV BAR (same gray, ~22px): per-section action links (§2.4)          │
├──────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│ CONTENT AREA (dark charcoal #333333) — per-screen layouts in §4          │
│                                                                          │
├──────────────────────────────────────────────────────────────────────────┤
│ RED FOOTER STRIP (~20px, #C00000) with a small centered progress bar     │
└──────────────────────────────────────────────────────────────────────────┘
```

### 2.1 Transport controls (top-left, on red)

- Three flat white glyphs on the red band: **back arrow ◄, pause ▌▌ (or play ▶ when
  paused), forward arrow ►**. Simple thick white shapes, no button borders.
- Below them a thin white **seek slider** (white track, small square thumb).
- Clicking play/pause toggles the simulated playback state (§6).

### 2.2 LED display panel (top-center)

A black rounded-rect panel (~440×58px) with a thin gray border, styled like a
hi-fi LED display. Monospace/OCR font (use `'OCR A Extended'`, fallback
`'Courier New'`), white text on black:

- **Line 1**: scrolling marquee of the current track, format
  `Artist - Album: Title - NN - Track Name`, scrolling right-to-left continuously.
- **Line 2**: a **spectrum analyzer** of ~24 small white bars that bounce randomly
  while "playing" (animate with random heights, ~10fps; freeze when paused).
- **Line 3**: a static menu strip in small caps:
  `Time Spectrum Track Post WIP EQ FX Options`
  - `Post WIP` opens the "Post What I'm Playing" dialog (§5.3).
  - `EQ` opens the Equalizer dialog (§5.1). `FX` opens Sound Effects (§5.2).
  - `Time` toggles line 1 between marquee and elapsed time `00:00·00`.

### 2.3 Logo (top-right, on red)

Text "**109 Studios**" in a large white handwritten/marker script font (use a
Google font like *Caveat*, *Permanent Marker*, or similar), with the tagline
"*Inspired by Music*" beneath it in a smaller script.

### 2.4 Navigation bars

**Main nav** (left-aligned links, separated by whitespace):

`109 Studios | My Library | Member Profile | WIP Boards | Shout Boards | Member Directory | About | Forums | Sign Out`

**Sub-nav** per section (second gray row):

| Section | Sub-nav links |
|---|---|
| 109 Studios | `What People Are Playing`  `What People Are Downloading`  `Browse 109 Music`  `My Favorites` |
| My Library | `Now Playing` (panel header links; see §4.2) |
| Member Profile | `My Profile`  `Edit My Profile`  `Edit My Connections`  `2 Connection(s) Pending Your Approval`  `Invite Friends`  `My Inbox`  `Compose Message` |
| WIP Boards | `Post WIP`  `Refresh Posts` + filters: `Posts From:` [dropdown: My Friends / My Friends & Their Friends / Everyone] `Date:` [Today / Last 30 Days] `Genre:` [text] `Posted By:` [text] |
| Shout Boards | `Post Message`  `Refresh Messages` + filters: `Messages From:` [same dropdown] `Date:` [Last 30 Days] `Posted By:` [text] |
| Member Directory | (search form is the content header, §4.7) |
| About / Forums | none |

**Link style rule (critical for the period look)**: every action in this app is a
**text link**, not a button — Tahoma ~11px, **bold + underlined**, color `#333333`
on gray bars, `white` or `#999999` on dark panels. Cursor: pointer. The current
section's own link renders **disabled** (plain `#999999`, no underline, no cursor).

## 3. Design system

| Token | Value | Used for |
|---|---|---|
| Chrome red | `#C00000` | top band, footer strip, dialog accents, member-card name bars |
| Nav gray | `#A0A0A0` | nav/sub-nav bars, table header rows, dialog field strips |
| Content charcoal | `#333333` | main content background, dialog bodies |
| Panel mid-gray | `#666666` | secondary panel fills, card backgrounds, input borders |
| Selected row | `#727272` | selected grid rows |
| Muted text | `#999999` | field values, disabled links, secondary text |
| White | `#FFFFFF` | headings, field labels, link text on dark, LED text/bars |
| Black | `#000000` | LED panel background, text on gray bars |
| Panel header bar | vertical gradient `#5A5A5A → #3A3A3A`, white bold text, ~20px tall | every panel/grid title bar |
| Body font | Tahoma, 11px (fallback Verdana, sans-serif) | everything |
| LED font | 'OCR A Extended', monospace | LED panel only |
| Logo font | handwritten script (e.g. Permanent Marker) | logo only |

**Recurring components:**

- **Panel**: dark container with a gradient header bar containing a white bold title
  (e.g. `Now Playing`, `Top 40 Tracks People Are Playing`, `Member Connections`).
- **Data grid**: header row on `#A0A0A0` with black 11px text and column dividers;
  body rows on `#333333` with `#CCCCCC` text, 18px row height, `#727272` selection;
  classic scrollbars. Columns are resizable-looking (draw dividers) but need not
  actually resize.
- **Label/value stack**: right-aligned **bold white** labels, left-aligned `#999999`
  values, e.g. `Username: FosDog`. Used in every profile block.
- **Mini-profile block** (appears on 6+ screens, always identical):
  - 128×96 photo thumbnail (gray placeholder box with a candid photo feel)
  - beside it, stacked links: `Member Connections`, `What I'm Playing`,
    `Start A Connection`, `Send Private Message`, `Open Link To ...`
  - below, label/value stack: `Username, Nickname, Gender, Age, Location, Hometown,
    Occupation, About Me, Schools, Fav Artists, AIM, MSN, Yahoo`
- **Pagination strip**: `First  Previous  Next  Last   Page: [ 1 ] of N` — links +
  a small text box. Every list pages by **10 records**.
- **Search band**: a strip of labeled text inputs at the top of a screen with
  `Begin Search` / `Clear Search` links at the left. Inputs are flat, dark
  (`#3F3F3F` fill, `#666` border, white text).

## 4. Screens

### 4.1 Login (entry screen)

A small centered dialog (~314×340px), charcoal `#333333` with a `#A0A0A0` title
strip reading **"109 Studios Community Explorer"**. Content: a moody red-lit lounge
photo (any warm dark lounge stock photo) with "109 Studios" script overlay; below
it two field rows (`Username:`, `Password:` — gray label strip, white input), then
a footer of links: `Sign In   Become a Member   Forgot Your Password?   Close`.

**Behavior**: any non-empty username/password signs in (use `dhouse` as the
suggested demo user, mapped to member **ProfessorX**). After sign-in, show the main
frame on the **109 Studios** section. `Become a Member` and `Forgot Your Password?`
can show a "opens www.109studios.com" toast — external site is out of scope.

### 4.2 My Library (local player) — 3 columns

- **Col 1 (~155px), panel "Now Playing"**: header link `Now Playing`; a list of
  queued tracks, each row = truncated title + duration (`Jazzanova - Jazzano…
  00:04:11`). The currently playing row is highlighted `#727272` with a small ►
  marker. Clicking a row makes it the "playing" track (updates LED marquee).
- **Col 2 (~120px), panel "Playlists"**: header links `Playlist  View All Tracks`;
  tree list with a `New Playlist` node and seeded playlists. Clicking a playlist
  filters the tracks grid.
- **Col 3 (rest), panel "All Tracks"**: toolbar links `Track  Add To Library
  Search All: [input]  Filter Columns  Clear`; data grid with columns
  **Track Title | Length | Artist | Album | Genre | Rating | Date Imported**.
  Each row has a small ► glyph. Double-click a row → it plays (LED updates, row
  gets the marker in Now Playing). Right-click (or a `Track` menu link) may show:
  `Play, Add To Now Playing, Add To Playlist…, Track Info, Remove`. `Add To
  Playlist…` opens dialog §5.6; `Track Info` opens §5.7.

### 4.3 109 Studios → What People Are Playing (default screen after login)

- **Search band** (two rows): `Date: [Last 30 Days]  Gender: []  City: []
  Country: []` / `Genre: []  Age Range: []  State: []  School: []`, with
  `Begin Search` and `Clear Search` links stacked at left.
- **Left panel (~490px) "Top 40 Tracks People Are Playing"**: toolbar links
  `Search for Track @ 109   Preview Track   Download Track`; grid columns
  **Title | Artist | Album | Genre | Total Posts**. Selecting a row loads the
  right-side panels.
- **Right top panel "Last 10 Posts For This Track"**: small grid **Date |
  Username**, with the post's message text shown as an indented gray sub-row
  (e.g. `clinton hills!` / `like wha :-[`).
- **Right side, mini-profile block** of the selected post's author.

### 4.4 109 Studios → What People Are Downloading / Browse 109 Music

Same skeleton as 4.3:

- Search band. For **Browse 109 Music** the fields are: `Mix Sets, Genre,
  Sub-Genre, Artist Based In, Artist Website, Date Added, Track Title, Artist,
  Album Title`, plus a `Sort By: Artist` link.
- **Left panel** ("Top 40 Tracks People Are Downloading" or "Search Results"):
  toolbar `Preview Track  Download Track` + pagination; grid columns
  **Mix Set (checkbox) | Track Title | Artist | Album Title | Length | Genre |
  Sub-Genre | File Size | Date Added**.
- **Right panel "Artist and Album Info"**: two side-by-side halves.
  - *Artist half*: photo placeholder; links `View All Tracks By Artist`,
    `Top Downloaded Tracks`, `Artist Website`, `Add To Favorites`; label/value
    stack `Artist, Label, Affiliation, Based In, Join Date`.
  - *Album half*: cover placeholder; links `View All Tracks On Album`,
    `Top Downloaded Tracks`; stack `Album, Label, Released, Total Tracks,
    Total Length, Genre, Mix Set (checkbox)`.
- `Download Track` shows a brief progress simulation then adds the track to
  My Library's grid. `Preview Track` sets it "playing" in the LED.

**My Favorites**: same grid layout listing favorited artists with a memo column.

### 4.5 WIP Boards ("What I'm Playing" feed) — 3 columns

- **Col 1 (~120px) panel "Posts"**: vertical feed of compact cards. Each card:
  bold title (`Jazzanova - … - Takes You Back (Unexpected Dub)`) on a `#C00000`
  or dark strip, a tiny album-art thumbnail, then `Username:, Date:, Time:` values.
  Clicking a card selects it.
- **Col 2 (~155px)**: mini-profile block of the selected post's author (header bar
  shows their username).
- **Col 3 (rest) panel "What I'm Playing — <track>"**: toolbar `Search for Track @
  109  Preview Track  Download Track`; label/value stack: `Date, Time, Title,
  Artist, Album, Genre, Length, Message`.
- Pagination strip above the columns.

### 4.6 Shout Boards (bulletin board) — identical 3-column skeleton to 4.5

Cards titled by message subject (`Pasha playing friday at SOBs`); detail panel
stack: `Date, Time, Web Link (clickable), Message`.

### 4.7 Member Directory

- **Search band**: `Username, Email Address, Gender, City, State, Country, School,
  Age Range, Favorite Artists` + `Start Search` / `Clear Search`.
- **Left rail**: mini-profile block of the signed-in user.
- **Results area**: pagination strip, then a wrap grid of **member cards**
  (~110×150px each, 5 per row): username centered on a `#C00000` name bar, photo
  thumbnail, then `Nickname:, Gender:, Location:, Hometown:, Age:` values.
  Clicking a card opens that member's profile (4.8).

### 4.8 Member Profile

Left rail is always the mini-profile block of the viewed member. Right side swaps
by sub-nav:

- **What I'm Playing** (default when viewing someone): toolbar `Back To
  Connections  Search for Track @ 109  Preview Track  Download Track`; filter row
  `Date: [Last 30 Days]  Genre: []` + pagination; grid **Date | Time | Title |
  Length | Artist | Album | Genre**, where each post's message renders as an
  indented gray text row under its track row.
- **My Profile / Edit My Profile**: two-column form of all profile fields
  (Username, Nickname, First/Last Name, Gender, Birthday, Country, City, State,
  Zip, Location, Hometown, Occupation, Schools, About Me, Website/Blog/Photo Album
  URLs, AIM, MSN, Yahoo, Fav Artists, "List me in the Member Directory" checkbox)
  with `Save` / `Cancel` links. Include an `Edit Picture` link → dialog §5.8.
- **Member Connections** (the signature screen — see screenshot 08/10): panel
  header `Member Connections`; toolbar `Edit My Connections  Connection Tree
  Refresh Root Member  Goto Username: [input]`. The canvas shows a large faint
  **ellipse** on `#333` with member thumbnails placed around it — each node is a
  photo with the username on a small `#C00000` label beneath. Lines connect the
  root member (center-left) to 1st-degree friends; their friends fan outward
  (2nd degree). Two horizontal sliders at the bottom: `Connection Arc:` and
  `Distance Between Members:` — dragging them re-spaces the nodes (any simple
  re-layout is fine). Clicking a node re-roots the graph on that member.
- **Pending approvals** (`2 Connection(s) Pending Your Approval`): simple grid of
  requester cards with `Approve` / `Decline` links; approving adds them to the
  connection graph and decrements the sub-nav counter.
- **My Inbox / Compose Message**: show a toast "opens 109studios.com forums" —
  these deep-linked to an external forum; out of scope.

### 4.9 About

Centered dark screen: lounge photo (~305×230), link `109 Studios Explorer`,
`Version 1.0`, `Copyright © 2004.  All Rights Reserved.`

### 4.10 Forums / Sign Out

`Forums` → toast "opens www.109studios.com/forums". `Sign Out` → confirm, return
to Login.

## 5. Dialogs (modal, centered; charcoal body, `#A0A0A0` title strip, red edge accents)

1. **Equalizer** (~310×260): title `Equalizer`; `Use Graphic Equalizer: [✓]`;
   **10 vertical sliders** labeled `80 170 310 600 1K 3K 6K 10K 12K 14K` with
   tick marks; footer links `Preset  Close`. Sliders just persist state.
2. **Sound Effects**: checkboxes `Use Echo`, `Use Reverb`, `Use Flanger` with two
   level knobs/sliders (Echo Level, Reverb Level, default 16); `Close`.
3. **Post What I'm Playing** (~310×300): title `Post What I'm Playing`; fields
   `Title, Artist, Album, Genre, Length` (pre-filled from the current LED track)
   and a `Message` textarea; footer `Submit  Cancel  Policy`. Submit prepends a
   card to WIP Boards.
4. **Post A Message** (~310×250): title `Post A Message`; fields `Visible To:
   [My Friends ▾], Web Link, Message Title, Message (textarea)`; `Submit  Cancel
   Policy`. Submit prepends to Shout Boards.
5. **Start A Connection**: shows target member's name + a short message textarea;
   `Send Request  Cancel`. Sends → that member shows "pending" state.
6. **Playlist / Add To Playlist**: name+description form; and a playlist picker
   list with `Add  Cancel`.
7. **Track Info**: read-only label/value stack of one library track (file path,
   size, bitrate, sample rate, mode, duration, tag fields).
8. **Edit Profile Picture**: file picker + preview + `Save  Cancel` (fake the
   upload; swap the thumbnail).
9. **Invite Friends**: **five** rows of `Name / Email` input pairs + message
   textarea; `Send Invites  Cancel` → success toast.
10. **Options**: `Media Folder: [path] Browse…`, `Loop Now Playing [✓]`; `OK
    Cancel`.

## 6. Simulated playback (no real audio required)

Maintain a fake player state: `currentTrack, isPlaying, elapsedSeconds`.
- Play/pause toggles a 1s timer incrementing elapsed time (reset at track length,
  auto-advance to next Now Playing row; loop when `Loop Now Playing` is on).
- LED marquee always shows the current track; spectrum bars animate only while
  playing; seek slider tracks elapsed/length and is draggable.
- (Optional stretch: use WebAudio to synthesize a low ambient loop so the spectrum
  feels real — not required.)

## 7. Seed data (embed in the app)

**Members** (the signed-in demo user is ProfessorX):

```json
[
 {"username":"ProfessorX","nickname":"Dame","gender":"Male","age":25,"location":"Brooklyn, NY","hometown":"Baltimore, MD","occupation":"Software Engineer","aboutMe":"this is meezart chillin in ...","schools":"Baltimore Polytechnic I...","favArtists":"Smashing Pumpkins, Th...","aim":"hadamin","msn":"hadamin","yahoo":"hadamin"},
 {"username":"FosDog","nickname":"Spaz","gender":"Male","location":"Virginia","hometown":"NYC","favArtists":"Jay Z"},
 {"username":"Atreyu","nickname":"Atreyu","gender":"Male"},
 {"username":"ALLOWME","nickname":"Maniac","gender":"Male","location":"Brooklyn, NY","schools":"The School of Hard Kno...","favArtists":"Jay Z, Shadow Govern..."},
 {"username":"Thaiphoon","nickname":"Gina","gender":"Female","age":19},
 {"username":"TheDude","nickname":"Duuuuude","gender":"Male","location":"Baltimore, MD","hometown":"The T Dot","age":22},
 {"username":"Boomer","nickname":"Igg","gender":"Male","hometown":"Baltimore, MD"}
]
```

**Connection graph**: ProfessorX ↔ FosDog, Atreyu, Thaiphoon, ALLOWME;
ALLOWME ↔ Boomer, TheDude; FosDog ↔ Thaiphoon. Two pending requests → ProfessorX.

**Library tracks** (Now Playing = the Jazzanova album in order): the album
*Jazzanova — In Between* (2004, genre "General Electronic"), tracks like
`01 - L.O.V.E. And You And I (00:04:11)`, `02 - No Use (00:06:12)`, `03 - The
One-Tet (00:03:51)`, `04 - Fade Out (00:05:44)`, `16 - Takes You Back (Unexpected
Dub) (00:05:36)` … plus loose tracks: Esthero — *Breath From Another* ("Lounge",
rock, 00:04:59), Le Tigre — "My My Metrocard" (00:02:54), The White Stripes —
*White Blood Cells* ("Expecting", 00:02:03), Jay-Z — *The Black Album* ("99
Problems (Produced By Rick Rubin)", "Encore (Produced By Kanye West)", Rap),
Digable Planets — *Blowout Comb* ("Jettin"), Bush — *Sixteen Stone* ("Glycerine",
Grunge), DJ Sigma7 — "Session 06", Britney Spears — *In The Zone* ("Everytime",
Pop). Give each: length, genre, rating (0–5), date imported (2004 dates).

**109 catalog** (What People Are Downloading / Browse results): artist **Pasha**,
album *Trois* (label indie, Alternative/Indie, based in NYC,
www.pashanyc.com), tracks "Vampire", "So Wild", "Seed" — 00:04:00, 3 MB,
added 8/1/2004.

**WIP posts** (author, date/time, track, message):
- ProfessorX, 09/01/2004 7:42 PM, Jazzanova "Takes You Back (Unexpected Dub)" —
  "cool song......kinda reminds me of an 80s artist, but i cant recall who."
- ProfessorX, 09/01/2004 7:40 PM, Jazzanova "01 - L.O.V.E. And Y…" —
  "cool song......gets u in lounge mode"
- ALLOWME, 08/04/2004 1:37 PM, Jazzamor "Caminho" — (no message)
- ProfessorX, 08/04/2004 1:19 PM, Jay-Z "99 Problems (Produced By Rick Rubin)"
- FosDog, 08/06/2004 12:56 AM, Le Tigre "My My Metrocard" — "clinton hills!" /
  "like wha :-["
- Zero 7, Lemongrass, Esthero, The Fugees, Tamia entries (08/2004) for volume.

**Shout Board messages**:
- ProfessorX, 09/01/2004 8:06 PM, "Pasha playing friday at SOBs",
  weblink `http://www.pashanyc.com` — "anyone down to go?  their shows r cool"
- ProfessorX, 08/13/2004 1:09 AM, "blah"
- ProfessorX, 08/12/2004 9:04 PM, "fbzdfbz…"

**Charts** (Top 40 Tracks People Are Playing): reuse the tracks above with
`Total Posts` counts 3, 2, 2, 1, 1, …

## 8. Interaction rules recap

- Every list paginates by 10 with the `First Previous Next Last Page [n] of N` strip.
- Search bands filter their grid on `Begin Search`; `Clear Search` resets.
- Selecting any row/card with an author loads that author's mini-profile block.
- All "Preview Track" links set the LED track; all "Download Track" links animate
  the footer progress bar then toast "Saved to Media folder".
- Feeds respect the `Posts From` filter: *My Friends* = 1st degree,
  *My Friends & Their Friends* = 2nd degree, *Everyone* = all seed data.
- Posting (WIP/Shout) prepends to the feed dated "now".
- State persists for the session only (in-memory is fine).

## 9. Out of scope

Real audio decoding, the external forum (`Forums`, `My Inbox`, `Compose Message`,
`Become a Member` → toast only), real uploads/downloads, real auth, and any
responsive/mobile layout — the prototype is a fixed 800×600 desktop simulation.
