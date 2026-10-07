# Pending pack updates

**2.3.0 is PUBLISHED and LIVE (2026-09-30; live updated ~11:19 UTC with nobody online, backup in the archive).** What remains is Robbin pressing Publish on the site's 2.3.0 release note, which also moves the hub's "Live runs" line. The notes below are kept until then. All eleven mods (Stund, Vandi, Malmr and Varda at 1.0.0;
Skaft 1.3.0, Rist 1.7.0, Utangard 1.4.0, Jafna 1.1.0, Vaka 1.1.0, Vaettir 1.6.3, Yoke 1.2.2) and
the Longhouse 2.3.0 pack (20 mods, 21 dependency lines) are on Thunderstore; every repo is pushed
and tagged, and Vandi, Malmr and Varda have public repos. **What is left is live**, step 6 below:
the published zips' plugin folders are staged in the session scratchpad at
`live-2.3.0\plugins\` (each zip byte-identical to the upload). Live is Robbin's call, after the
Thunderstore app shows 2.3.0 (see the package-listing index note in memory). Step 6 predates
the widening: live needs ALL ELEVEN, including Vaka and Jafna (Vaka is `Everyone`; Jafna, Varda
and Stund are `HostOnly` and must be there for Dyrr's allow-list), plus Utangard's cfg edits.
Once live runs 2.3.0, this section goes, as 2.2.0's did.

2.2.0 went out on 2026-09-22 and its section is gone from here. What it carried is in its
changelog entry, and how 2.1.4, 2.1.5 and 2.4.0 were folded into it is in this file's git
history.

## 2.4.1 - PUBLISHED 2026-10-08: repins Jafna 1.2.1

A patch repin. Jafna 1.2.1 makes the hoe's build panel readable (two columns, taller box, fixed
font; the label's 61 px box was shrinking thirteen rows to a few pixels). Robbin checked it in game.
Cut from the 2.4.0 tags onto `release/2.4.1` in `wt-release-240\jafna` and `\longhouse`; both zips
are in each `build\` (Jafna dll hash equals the package folder's, 6 entries each). Publish Jafna
first, then the pack (done, both verified, tagged and pushed). Live needs only Jafna's DLL (HostOnly) when the time comes.

## 2.4.0 - PUBLISHED 2026-10-08: adds Fleyta and Svimma, repins Vaettir, Rist, Vandi, Utangard, Jafna, Kynda, Sinka and Taum

**A minor**: two mods join (22 members, 23 dependency lines), eight repin, Core stays at 1.4.0. Every
other pin is 2.3.2's. Published in this order on 2026-10-08: Fleyta 1.0.0, Svimma 1.0.0, Vaettir
1.7.0, Rist 1.8.0, Vandi 1.1.0, Utangard 1.5.0, Jafna 1.2.0, Kynda 1.2.0, Sinka 1.3.0, Taum 1.1.0,
then the pack. Each was cut from its published commit onto a `release/2.4.0` branch in
`E:\Repositories\valheim\wt-release-240\<mod>` with only the chosen changes, tagged and pushed;
`main` of the mods is not merged from these branches. Fleyta and Svimma got public repos
(github.com/Ezomic/valheim-fleyta and valheim-svimma). Every DLL in the tcli zip equals the dist zip
and the build; every listing carries AI Generated.

**Not played with other players, and what was tested in game (single player, release builds, 2026-10-07):**
the Vaettir jib set, Rist's capstones and others-solo, Utangard's panel passed. Held back or open: the
Vandi metal scenario hung on its first run (the swing step; Vandi code ruled out, root cause
unknown), Jafna's three and Kynda's two failed on state/config, not code (see the LHM-42/46/48
comments), Fleyta's scenario needed a corrected boat position and Svimma's needs you to swim out
first. Fleyta's shove has never reached water in a test.

**Rist 1.8.0 ships Turned blade without the 30 degree parry arc** (it needs the LHM-53 merges, which
stay in 2.5.0) and removes the old Long stride jump bonus.

**Live (Robbin's call, once the Thunderstore app shows 2.4.0):** needs ALL TEN mods from the
published zips, including Fleyta (Everyone) and Svimma (HostOnly; add it to Dyrr's allow-list).
Vaettir's jib model changed: the three standing jibs on live (one each for AngryKarin, Fuhrer and
Guy Withabeard) change look and size (1.56 m to 3.3 m, 1.9 m footprint) and the reach is now measured
from the jib, not the post. Copy each plugin folder from the zips; Rist's cards.txt changes. Restart
with the server empty, backup first. Existing cfg files keep old defaults: Kynda's Stations line is
already `smelter,blastfurnace` on live.

## Rist 1.7.2 (standalone, not in a pack)

Published on its own on 2026-10-06 for the SteamOS rune page cursor bug (LHM-64): the page and the game fought over the cursor lock every frame, which Linux turns into a pointer pinned to the centre. Branch `release/rist-1.7.2` in `E:\Repositories\valheim\wt-release-231\rist`, on top of `release/2.3.1`. **The pack still pins Rist 1.7.1.** The next pack update should repin Rist 1.7.2 together with its other members. Not confirmed on a Deck.

## 2.3.2 - repins Vaettir and Dvala (LHM-74, LHM-75)

**2.3.2 is published and live as of 2026-10-06** (live deployed at 12:44 CEST, backup in `archive\valheim-live-backups`).

**A patch**: two repins, no member joins or leaves, Core stays at 1.4.0, and every other pin is
exactly 2.3.1's (compared in the built zip's manifest). Prepared on 2026-10-06 after 2.3.1 went
out and live moved to it. Same method as 2.3.1: each repo has a branch `release/2.3.2` in
`E:\Repositories\valheim\wt-release-231\<mod>`, cut from its `release/2.3.1` with only the fix
and the release commit on top, so nothing from `main` comes with it. `core` stays detached at
`b50cc30`. Both zips were built with `own-profile\package.ps1 -Mod <Name>` from that folder
(never `-SkipBuild`) and nothing was deployed into the play profile.

**Every version below is a proposal. The numbers are Robbin's.**

| Mod | Proposed | Ticket | What it is | Zip entries (previous / now) | DLL |
| --- | --- | --- | --- | --- | --- |
| Vaettir | 1.6.5 | LHM-75 | the Holds button hangs outside the frame instead of landing on a chest cell | 48 / 48 | `1.6.5+5da54c5` |
| Dvala | 1.0.4 | LHM-74 | a dungeon is never restocked while a player's gravestone is in it | 6 / 6 | `1.0.4+d2931a2` |

Zip DLL SHA-256 prefixes: Vaettir `f1ec212bb786`, Dvala `65a08a74d06e`. The DLL names the commit
that was HEAD when it was built, the one before the release commit, as in 2.3.1. Every entry
other than the DLL, manifest, README and changelog is the same content as in the previous zip
once line endings are normalised (Dvala's README changed on purpose, it documents the gravestone
rule).

**Staging trap, again:** `package.ps1` leaves `<repo>\package\BepInEx\plugins\<Mod>` stale
(it held the previous version's DLL), and tcli publishes from that folder, not from `dist\`. It
was restaged from the validated zip's `plugins/<Mod>` content and `tcli build` run in each repo;
the tcli zips in each repo's `build\` have the same DLL hash and file list as the `dist\` zips
(only the manifest differs, tcli rewrites it). Publish from those, after checking the staging
folder still matches.

Things to know:

- Neither fix has been run in game. Dvala's gravestone check in particular needs a real death
  in a due dungeon. By hand: die in a frost cave that is due, leave the grave, run `dvala restock`
  (it refuses, Verbose logs the line), collect the grave, restock again. For Vaettir, open a
  Reinforced chest with a long name and check the Holds button sits clear of the cells.
- Dvala's worktree and Vaettir's both show many files modified from line endings alone. They
  are not part of the release and were not committed.

Steps, in order:

1. Publish **Vaettir 1.6.5 and Dvala 1.0.4** from each repo's `build\` zip. Tomls are generated
   and committed (AI Generated). Core does not move, so nothing goes up before them.
2. Pack: `longhouse` branch `release/2.3.2` carries manifest 2.3.2 with the two pins, the dated
   `## [2.3.2]` changelog entry and the toml. `tcli build` there makes the zip.
3. Tag each release commit and push the tags and branches when published. `main` is not merged
   from these branches.
4. Live, Robbin's call: Vaettir and Dvala from the published zips, Vaettir's new build id is
   compared by the gate. Restart with the server empty.

## 2.3.1 - repins Stund, Kynda, Vaettir, Rist, Malmr, Dvala and Lur (LHM-73)

**2.3.1 is published and live as of 2026-10-06.** What follows is kept as the record of how it was assembled.

**A patch**: seven repins, no member joins or leaves, Core stays at 1.4.0. Prepared on 2026-10-05
from the published 2.3.0 state, **not from `main`**, because `main` of most of these repos already
holds work Robbin placed in 2.4.0 and 2.5.0 (the settings screen LHM-51, Kynda's hover text and
the Skip, Rist's new stones and capstones, Dvala's new dungeon, Vandi and more). Each repo has a
branch `release/2.3.1`, cut from its 2.3.0 commit with only the fixes below picked onto it. The
checkouts themselves were not touched: the branches live in git worktrees under
`E:\Repositories\valheim\wt-release-231\<mod>`, laid out as siblings with `core` checked out
detached at `b50cc30`, the Core commit 2.3.0 shipped against (1.4.0 plus the BiomeIndex fix, which
is shared source and not part of Core's DLL). `own-profile\package.ps1` and `write-tomls.ps1` were
copied into `wt-release-231\own-profile`, so they resolve the siblings there.

**Every version below is a proposal. The numbers are Robbin's.**

| Mod | Proposed | Tickets | What it is | Zip entries (2.3.0 / now) | DLL |
| --- | --- | --- | --- | --- | --- |
| Stund | 1.0.1 | LHM-57 | the clock shows the sky's time, 06:00 morning and 18:00 sunset | 6 / 6 | `1.0.1+2c7be67` |
| Kynda | 1.1.2 | LHM-50, LHM-71 | batching no longer drops to one item a press; the Tun serves the blast furnace | 12 / 12 | `1.1.2+a3c6c74` |
| Vaettir | 1.6.4 | LHM-63, LHM-58 | trader stock opens with the trader's biome boss; the Holds button clears the slots | 48 / 48 | `1.6.4+770181c` |
| Rist | 1.7.1 | LHM-64, LHM-59 | cursor written only when it changes; Sure-footed's capstone is a landing roll | 7 / 7 | `1.7.1+b3cf0a6` |
| Malmr | 1.0.1 | LHM-60 | Verbose names why a blow went to vanilla (diagnostics, not a fix) | 6 / 6 | `1.0.1+63640fa` |
| Dvala | 1.0.3 | LHM-67, LHM-68 | restock puts back hanging and pedestal pickups; chest refills stop failing silently | 6 / 6 | `1.0.3+94217a0` |
| Lur | 1.1.2 | LHM-24 | the horn's bell has a wall, so it is no longer see-through from inside | 8 / 8 | `1.1.2+3b5d603` |

Zips are in each worktree's `dist\` (the pack's is in `longhouse\build\`), built with `package.ps1 -Mod <Name>` (never `-SkipBuild`),
each DLL hashed against the built one and each entry list compared against the 2.3.0 zip: same
names, and every file other than the DLL, manifest, README and changelog is the same content
(Rist's `cards.txt` also changed, on purpose). Dyrr (LHM-10) is **not** in this update: its fix
is the 1.4.2 that 2.3.0 already pins.

**Things that are not what the tickets say, read before publishing:**

- **Kynda LHM-71 is a reduced version.** The commit on `feature/LHM-71-tun-blast-furnace` sits on
  the Skip (LHM-47, held) and rewrites `ServingStation` around it, so it cannot be picked. 1.1.2
  carries only what 1.1.1's code needs: the Tun's `Stations` default becomes
  `smelter,blastfurnace`, plus hover text, README and the scenario. A saved cfg keeps `smelter`
  until the line is edited.
- **LHM-24 is Lur's fix, not Kynda's.** The only fix commit for it is in Lur (the scroll horn's
  bore), and Lur joined this update on 2026-10-05 at Robbin's word. Kynda has nothing for it:
  its two camp models still have the open edges the ticket listed, and stay as they are.
- **Lur 1.1.2 is one picked commit** (`da8114d`, the open-edges fix) on the commit that
  published 1.1.1 (tag `v1.1.1`), plus the version bump and changelog. Nothing else came with
  it. The model `lur.obj` and its item icon `lur.png` changed (the icon is redrawn from the new
  model); the `.mtl`, the package icon, README and licence did not. The check
  (`own-profile\check-models.py lur`) still lists 85 open edges, **all in the iron group** (band
  sleeves and the buried start of the mouthpiece, which the commit leaves open on purpose); the
  bone group, the part a player looks into, went from 26 to 0. `Lur.csproj` still said 1.1.0
  at 1.1.1, so it moves to 1.1.2 here and is right again. No 1.1.1 zip is on disk, so the entry
  list was compared with 1.1.0's (same eight names). The README is that of
  `v1.1.1`, which means the README's bugs-and-ideas section (a later commit on `master`) is not
  in 1.1.2.
- **Rist LHM-59 is reduced too.** The landing roll was merged on top of the unreleased stones.
  1.7.1 takes the roll, its press guard and the `Enabled` gate, and leaves out everything that
  needs Eel-slick, Engineer, Blood-sworn and the 31-stone catalogue. It reads `Effects.TotalFor`,
  the 1.7.0 reader, where `main` uses `Effects.Cached`. It takes immunity away from anyone who
  carved Sure-footed to rank five, which by the 1.7.0 precedent could argue for a minor.
- **Dvala LHM-67 and LHM-68 are one commit on top of the new dungeon work (LHM-62).** 1.0.3 is
  that commit rebuilt against 1.0.2: the pickup rebuild and the chest fixes, a console with only
  `dvala restock`, the `SoftReferenceableAssets` reference, no NewDungeon text anywhere.
- **Malmr LHM-60 does not fix the first-blow report.** The cause was never found. The release
  carries the logging and the `malmr-first-blow` scenario.
- **Vaettir LHM-63 and LHM-58 changelog hunks** conflicted on the pick and were rewritten as one
  entry. The code picked cleanly.
- Nothing from any of these has been run in game. Every ticket comment says "built only".

Steps, in order:

1. Run the scenarios below on a fresh world with passes hidden, against the **release builds**.
   The play profile builds whatever each real checkout has out, which is a feature branch for
   Kynda, Vaettir, Rist and Dvala, so the release builds need to get into a profile first.
2. Core does not move, so nothing goes up before the mods. Publish **Stund 1.0.1, Kynda 1.1.2,
   Vaettir 1.6.4, Rist 1.7.1, Malmr 1.0.1, Dvala 1.0.3 and Lur 1.1.2** from the zips in each worktree's
   `dist\`. Tomls are generated and committed (AI Generated on all of them). Dvala's listing had
   no categories when this was written, and the Longhouse listing lacks AI Generated too; the
   token cannot edit a listing, so check both on the site.
3. Pack: `longhouse` branch `release/2.3.1` carries manifest 2.3.1 with the seven pins, the
   dated `## [2.3.1]` changelog entry and the generated toml. The pins were edited by hand,
   since `build-manifest.ps1` reads its members from the real checkouts' manifests, and every
   pin was compared against the member's release manifest. `tcli build` there makes the zip;
   it needs no `package.ps1` entry.
4. Tag each release commit and push the tags and branches when published. `main` of each repo
   already holds these fixes in their original form, so `release/2.3.1` is not merged back; the
   next release from `main` simply carries a higher version.
5. **Live, in the same sitting, Robbin's call:** all seven go on live, copied out of the published
   zips. Kynda, Malmr, Dvala and Lur are `Everyone`, Vaettir and Rist carry new build ids the gate
   compares, and Stund is `HostOnly`, which still checks a client carrying it against the
   server's copy. Rist's `cards.txt` changes (Sure-footed). Lur's DLL and `lur.obj` both change, copy both. Restart with the server empty.

**Scenarios to run before release** (Devkit, `Run all`, singleplayer unless noted). Add the new
ones to `own-profile\BepInEx\scenarios\playlist.txt` first, which lists the 2.3.0 set only:

- Stund: `stund-clock-agrees-with-the-world` (changed: steps 06:00, 12:00, 18:00, 00:00; assumes
  the 1200 second day).
- Kynda: `kynda-coal-three-per-press` and `kynda-tun-blast-furnace`, both new. The second needs
  `Verbose = true` and `Stations = smelter,blastfurnace` under `[Trough]` in the cfg first, since
  a saved cfg keeps `smelter`. Also try the batch key with a held key on a burning fireplace by
  hand, since the report was intermittent.
- Vaettir: `vaettir-jib-trader-items` and `vaettir-holds-button-clear-of-cells`, both new, and the
  whole existing jib and furrow set for regressions, because `ConfigRevision` moves to 4. The
  chest pairs `paired-vaettir-*` stay skipped as in 2.3.0.
- Rist: `rist-landing-roll`, new, and `rist-forsaken-powers`, whose fall-damage expectation
  changed. The other five Rist scenarios for regressions. By hand: Jump 100 with Long stride at
  rank 5, jump on flat ground, no damage; and a landing roll from a ledge.
- Malmr: `malmr-first-blow`, new, and the rest of the Malmr set. Turn `Verbose` on and read the
  new reason lines.
- Dvala: `dvala-restock-spawns-no-pickups-on-a-fresh-dungeon`, new, needs a frost cave
  (`FrostCaves`) and `devcommands` for `dvala restock`. A spawn on a fresh dungeon means the seed
  replay picked different alternatives than the original generation. By hand, the real cycle: take
  the pickups, restock, take again, and the two-client case. The chest report (LHM-68) is only
  answered by a restock with `Verbose` on, reading the per-chest skip lines.
- Lur: **no scenario exists**, and none could cover this, since it is a look at a surface. By
  hand, on the release build: get the horn (Hildir sells it; `spawn Lur` with devcommands),
  hold it and look into the bell from the open end at eye height, then turn it so the far wall
  of the bore is behind the opening. You should see the inside of the horn, not the world
  through it. Then sound it once at a Hildir dungeon to confirm the mod still works, since the
  mesh is the only thing that changed.

## 2.3.0 - adds Stund, Vandi and a vein mining mod, and repins Skaft, Rist, Yoke, Vaettir, Utangard, Jafna and Vaka

**A minor**, same as 2.2.0 and for the same reason: the set grows again, sixteen mods to
eighteen. Waits on Stund 1.0.0, Vandi 1.0.0, Skaft 1.3.0, Rist 1.7.0, and patch releases of Yoke
and Vaettir.

**Vandi joined on 2026-09-24, at Robbin's word, for Saturday.** Creatures wear more stars in a
biome whose boss you keep killing, and that boss comes back a star harder, up to two - your
kills, credited only to whoever made the offering. `Requirement.Everyone`, because the star roll
runs on whichever client owns the zone, so it goes on live as well. It had never been run until
that day: `vandi-stars-per-biome` then passed 23 of 23, and `vandi-summoner-gets-the-credit`
failed at step 6 in a way that could never have passed (Devkit's `goto` and `use` only find
building pieces, and an altar is not one). The scenario now spawns its own Eikthyr altar with
`location` and makes the offering through Devkit's new `offer` step - **it has to pass, and a
short normal play session has to look right, before Vandi is released.** Then its release needs
what Stund's did: a version (1.0.0 proposed, the house rule), `'vandi'` in write-tomls.ps1 and
package.ps1, a public repo (none exists yet), and a zip. Its icon exists. It is in both build
lists already. Tracked as LHM-8.

**Yoke and Vaettir need patch releases**, because the shared BiomeIndex both link had a bug:
Valheim 1.0's persistent-event spawn gate was not read, the Jotun invasion's every-biome rows were
taken for the Meadows, and the Elaking and Jotun trophies, the Elaking hair bundle and the
Vanguard chestpiece family were filed as Meadows items - Yoke raised their stacks at Eikthyr, and
Vaettir let them be pulled from containers from Eikthyr on. Fixed in core `ce9aaac`; both mods
compile against it and carry an Unreleased changelog entry. A rebuild changes their build ids, so
they cannot sit this one out once built. **Versions are Robbin's: Yoke 1.2.2 and Vaettir 1.6.3
proposed**, both fixes. Yoke's also carries its README's bugs-and-ideas section, committed after
1.2.1. Neither is zipped yet - that waits on the numbers. Before zipping, relaunch and read
Yoke's `ezomic.valheim.yoke.items.txt`: those items should now read `deepnorth`.

Stund is the clock. `Day 43   17:45` on the HUD, in the game's own typeface, top centre by
default and in any corner you like. Valheim's own clock is the sun and it is a good one; it
stops working the moment you are underground, which is where the questions that turn on the
time actually get asked.

It comes after 2.2.0 because each pack version repins one Skaft version: 1.2.0 went with 2.2.0,
1.3.0 goes here, and 1.3.0 could not have gone first.

**Rist 1.7.0** joined on 2026-09-24 as a repin, and rides here by Robbin's choice over a 2.2.1
of its own. Sprinting could be free: Tireless, Long wind and Long stride at rank 5 plus
Eikthyr's power took the run-stamina discount past 100%, which AllHailPidgey reported from
live. `MinRunStaminaCost` now keeps running at a fifth of its cost or more, and none of the
three capstones touches running any more - Tireless shortens the pause before stamina returns,
Long wind adds regen, and Long stride jumps 15% higher with the landing measured from a vanilla
jump's height, because the first build of it hurt on every jump at Jump 100. Steady footing
went to 5% a rank and Ox-backed's capstone from stagger to half the overloaded stamina drain,
because `rist powers` measured Fader at -0.50 stagger and the two stones took a hit down to a
twentieth. All six Rist scenarios pass, 168 steps, and `rist-forsaken-powers` finds no forsaken
power that reaches zero on any stat with every stone carved.

### Widened on 2026-09-26 - everything in progress except Thralls

**Robbin's word on release day: "everything we are doing now except thralls" goes out with this
update, not on its own.** So 2.3.0 also carries the following. Every version below is a
proposal; the numbers are his.

| Mod | Change | Proposed | Tracker | Gate |
| --- | --- | --- | --- | --- |
| Utangard | a boss will not come to an altar in a biome the group has not earned, and the Queen's door stays sealed; personal Fighting and Discovery bars that earn back eating and healing in a locked biome, on a new compendium panel | 1.4.0, new rules | LHM-26 | `Everyone` |
| Vaettir | the BiomeIndex fix above, plus the crafting panel's chest number, plus Furrow's grid drifting between patches and under saplings | 1.6.3, all fixes | LHM-28, LHM-29 | `Everyone` |
| Jafna | a flatten that needs higher ground raises it and charges stone for it | 1.1.0, a feature | LHM-30 | `HostOnly` |
| Vaka | lights that burn resin or coal last twice as long; cooking fires unchanged | 1.1.0, a feature | LHM-31 | `Everyone` |
| Varda (new) | map pins for places you have been: a dungeon pins itself when you go in, each portal you built gets its own pin with its tag, and a broken portal takes its pin with it | 1.0.0, the house rule | LHM-33, LHM-34, LHM-35 | `HostOnly` |
| Malmr (new) | vein mining: tap Alt with a pickaxe, fill a bar for the whole deposit, it breaks at once; stone and each ore open at a Pickaxes level and their biome's boss killed (at one star with Vandi) | 1.0.0, the house rule | LHM-32 | `Everyone` |

- **Utangard ships from the LHM-26 branch merged into `main`** since 2026-09-27, when Robbin pulled
  the foothold bars and compendium panel C into 2.3.0 ("2.3.0 start building"). Until then it was
  to ship from `main` alone (`d7db158`). The Queen's door joined at Robbin's word the same
  day: doors keyed to `BossDoorKeys` (the Sealbreaker) stay sealed in a locked biome. That her
  door is keyed that way is unverified; the log names the doors it guards on world load. Live's
  Utangard cfg edits in step 6 still apply on top of the new build.
- **Malmr reads Vandi but does not require it** (Robbin, 2026-09-26: first a hard dependency,
  then "make vandi a soft dependency of malmr but recommend it in the readme"). With Vandi a metal
  needs its biome's boss beaten at one star (the second kill); without it, a plain kill by the
  character. Malmr's manifest does NOT name Vandi. It is `Everyone`, so it goes on live, and it is
  in both build lists since own-profile `2026-09-27`.
- **The new mods are members, so the count goes to twenty mods and twenty-one lines.** Malmr
  needs everything Stund needed: an icon, `write-tomls.ps1` and `package.ps1` entries, a public
  repo, both build lists, and a copy on live whatever its gate turns out to be, for Dyrr's
  allow-list.
- **Varda joined on 2026-09-27 at Robbin's word** ("it should join 2.3.0"), at 0.1.0 and never
  released. It needs the same as Stund. Done: its icon (candidate c, the folded map, his pick),
  its generated toml, and its `write-tomls.ps1` and `package.ps1` entries. Left: a public repo
  (github.com/Ezomic/valheim-varda does not exist yet), and a copy on live for Dyrr's allow-list
  exactly like Stund's, though it does nothing on a server. It stays out of `server.ps1` on the
  same terms as Stund. Ships from the LHM-35 branch (H at your portal hides its pin, per player),
  which sits on LHM-34 (one pin per portal) and LHM-33 (a destroyed portal takes its pin). Its two scenarios were green on 2026-09-22 and have to be rerun on the new
  build, plus `varda-forgets-a-destroyed-portal` and `varda-hides-one-portal`.
- **Vandi's altar scenario now asks for `Eikthyrnir`** (`ddffac0`). That is the old name and is
  unconfirmed on 1.0; if it is wrong, Devkit's `location` step lists the names it knows.
- **Scenarios, 2026-09-28 to 09-29: 51 of the 52 in `own-profile\BepInEx\scenarios\playlist.txt`
  pass** on the current builds, across six runs in fresh test worlds (logs in the session
  scratchpad, `scenario-run-1..6.log`). Every mod in this table plus Stund, Skaft, Rist, Yoke and
  Vaka is green. The one left, `varda-pins-your-own-portal`, failed on a world structure inside
  Devkit's staged circle, not on Varda; Devkit's stage is being taught to move off such ground.
  Robbin's by-hand checks passed on 2026-09-29: Varda's H key, Jafna's and Malmr's Left Alt as a
  tap that ignores Alt+Tab. **Two players, 2026-09-30:** `paired-kill-credit-killer` 112/112 and
  `-watcher` 45/45 on the dev server through `own-profile\pair.ps1` (LHM-39: both clients join
  by themselves, one Run starts both halves). Each kill credited once, by the machine that owned
  it, to the summoner. Only FallenWarrior, FrozenKing(_p3), TrollFrost and Writhan die through
  their animation, so only they could ever be counted twice; that path is not exercised and is
  harmless or minor for all three mods. Vaettir's chest pairs were skipped at Robbin's call:
  they passed on 2026-09-20 and that code has not changed.
- The runs found real bugs, all fixed before this line was written: kill credit that reached
  nobody (Vandi, Utangard, Vaettir, the OnDeath postfix had no ZDO left), Malmr keying every
  deposit's metal on the first one struck, Vaettir's Hod line squeezed to the game's label,
  Deep North materials ungated in Vaettir (now read off the Frozen King at runtime), Alt+Tab
  toggling Jafna's and Malmr's Left Alt, and Jafna reshaping terrain ops that were not the
  player's swing. Jafna's paid raise now also needs a workbench in range (Robbin's call).

### Prepared on 2026-09-24 - what is left is the uploads

**It goes out on Saturday 2026-09-26**, Robbin's date. Everything that is not a publish or the
live server is done.

- **Three zips built and validated**, each against the zip before it - the check that catches a
  stale staging folder:

  | Stund 1.0.0 | Skaft 1.3.0 | Rist 1.7.0 |
  | --- | --- | --- |
  | 6 entries, like Kvedja's | 6 entries, like 1.2.0's | 7 entries, like 1.6.0's |
  | DLL `1.0.0+28cb109` | DLL `1.3.0+6521da3` | DLL `1.7.0+8777533` |

- **Stund** has its icon - a clock face in Kvedja's flat style, picked from three - its
  generated toml, its `package.ps1` entry, and a public repo, github.com/Ezomic/valheim-stund,
  on `master` like every repo new-mod.ps1 makes.
- **Skaft**'s `damaged-in-reach` is merged into `main`, a fast-forward, and pushed. GitHub was
  nine commits behind until then: 1.2.0, on Thunderstore since 2026-09-22, had never been pushed.

What remains, in order:

1. Publish **Stund 1.0.0**, **Skaft 1.3.0** and **Rist 1.7.0** from the zips in their own
   `dist\` folders, and **Vandi**, **Yoke** and **Vaettir** once theirs exist. Rebuild one only
   if its repo has moved past the commit its DLL names above.
2. Add `'stund'` and `'vandi'` to `$members` in `longhouse\tools\build-manifest.ps1`. Late on purpose: the
   generator reads each member's own `manifest.json`, so an early line pulls an unpublished
   1.0.0 into whichever pack version regenerates next.
3. `.\tools\build-manifest.ps1 -PackVersion 2.3.0`. Check it comes out at **eighteen mods plus
   BepInEx - nineteen dependency lines**, with Stund and Vandi present, Skaft at 1.3.0, Rist at
   1.7.0, and Yoke and Vaettir at their patch versions.
4. Date the `## [2.3.0]` heading in CHANGELOG.md - the entry is already written.
5. `package.ps1 -Mod Longhouse`, then publish.
6. **Live, in the same sitting - not optional.** Rist is `Everyone`, and Skaft is `HostOnly`,
   which still checks a client that carries it against the server's copy. So live needs Rist
   1.7.0 with its `cards.txt` and Skaft 1.3.0, or every player on 2.3.0 is refused - and after a
   restart, every player still on 2.2.0 instead. Live ran Core 1.4.0, Rist 1.6.0 and Skaft 1.2.0
   when this was written. **Vandi, Yoke and Vaettir go on live too**: Vandi is `Everyone` like
   Rist, and Yoke and Vaettir carry new build ids, which the gate compares.

   **Stund goes on live too, though it does nothing there.** Its only patches are on `Hud`,
   which a dedicated server never builds, and it has no `BepInProcess` to keep it off. It has
   to be there for Dyrr: `ModPolicy = Allow` refuses a client running a mod the server does
   not, live's `AllowedMods` is only Devkit and Sinka, and `dyrr-mods.txt` is empty. Kvedja got
   in the same way, by being on the server.

   **Utangard's settings change in the same sitting, at Robbin's word on 2026-09-24**, and go
   in before the restart so they load with it. In live's
   `BepInEx/config/ezomic.valheim.utangard.cfg`, backed up first: `FoodDrainMultiplier` and
   `BuffDrainMultiplier` 5 to **3**, and `HealthRegenMultiplier` 0 to **0.2**. No Utangard
   release: Core imposes the server's values on every client, so the file on live is the whole
   change. It was asked for live and then moved here, to ride the update rather than cost a
   restart of its own.

   Copy the DLLs, and Rist's `cards.txt`, out of the published zips rather than building fresh:
   the gate compares build ids, and the zips are what the players install. Rist's new
   `MinRunStaminaCost` writes itself into live's cfg at 0.2 on the first boot. Card ids did not
   change, so nobody's ranks move. Restart at Robbin's word, with the server empty.

**Nothing in this one needs eyeballing before it goes.** Unlike Kvedja, the thing that was only
checkable by eye is now checkable by scenario: `upright` was added to Devkit precisely because
the clock shipped unreadable while its scenario passed. What remains uncovered is whether the
label is visible at all, which no scenario can answer for any HUD element - `Hud.SetVisible`
parks its root off the screen rather than disabling it.

## Versions still to be confirmed

**Stund 1.0.0** is a proposal, on the house rule rather than the diff: every mod in the suite
has gone up at 1.0.0 and gone public at the same moment. Say if it should ship lower and stay
private, and its pack entry comes out with it.

**Rist 1.7.0** is settled. Robbin picked it over 1.6.1 on 2026-09-24, since three carved stones
behave differently from 1.6.0.

## Which digit moves

A repin is a **patch** and a member joining or leaving is a **minor**. That is the whole rule,
and every repin since 2.0.15 has followed it; 2.1.0 is the one minor so far, which earned it by
**adding** Jafna.

**2.2.0 and 2.3.0 are the second and third minors**, and both earn it the same way 2.1.0 did,
by adding members rather than new versions of existing ones. 2.1.3 ships fourteen mods; 2.2.0
adds Kvedja and Merki for sixteen, and 2.3.0 adds Stund for seventeen.

**Two members in one minor is still one minor.** A version that has to move the middle digit
carries as many members as it likes, exactly as it carries repins for free - the rule gives the
smallest correct bump, not one bump per thing. 2.4.0 was never about the digit; it was about
Merki being untested, and it went when that did.

**A minor absorbs repins for free**, which is what folding the two patches in on 2026-09-22
rests on. The rule says what the *smallest* correct bump is, so a version that has to move the
middle digit anyway can carry any number of repins without moving anything further - four
repins inside 2.2.0 and 2.3.0 rather than two patches in front of them. The reverse is not
true: a patch can never carry a member.

## Before each publish

Run the Devkit scenario suite for every mod whose version moves. **Merki has four now** and
three have been run, all passing, on 2026-09-22: `merki-forces-you-onto-the-map` in
singleplayer, and the `paired-merki-watcher` / `paired-merki-dies` pair on the dev server with
`DeathMarkMinutes = 1`. The fourth is `paired-merki-scope-*`, which needs `Range = 100` on the
server and has not been run. **Rist has six**, all passing on 2026-09-24: `rist-armour-scales`,
`rist-steady-footing-capstone`, `rist-sprinting-is-never-free`, `rist-movement-capstones`,
`rist-forsaken-powers` and `rist-stagger-and-load`.
All need **singleplayer**, because ranks live on the server and `rist rank` refuses on a
client. None needs devcommands: they reach `rist` through Devkit's `mod` step and Eikthyr's
power through `status`. None of them jumps, so Long stride's landing is checked by hand - Jump
100, Long stride at rank 5, jump on flat ground, no damage. Skaft's two both pass as of
22 September 2026 - `skaft-bench-repair` and `skaft-sweep-and-crosshair`. Kvedja's one passes
as of the same day - `kvedja-greets-you-in-chat` - with the caveat written into 2.2.0 above:
it needs the site reachable and `/admin/motd` non-empty, so a failure there is as likely to be
the network or an emptied message as it is the mod. Stund's passes at 8 steps as of the same
day - `stund-clock-agrees-with-the-world` - and run it in **singleplayer**, because its time
steps go through the server and a guest can be refused for reasons that are nothing to do with
the mod.
