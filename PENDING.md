# Pending pack updates

One: 2.3.0. It waits on Thunderstore publishes that have not happened yet, which is why the
manifest is untouched: a pack that pins a version nobody can download is a pack that fails to
install, and `tcli` will build it happily.

2.2.0 went out on 2026-09-22 and its section is gone from here. What it carried is in its
changelog entry, and how 2.1.4, 2.1.5 and 2.4.0 were folded into it is in this file's git
history.

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
  released. It needs the same as Stund: an icon (three candidates drawn, his pick pending), its
  `write-tomls.ps1` and `package.ps1` entries once the icon exists, a public repo
  (github.com/Ezomic/valheim-varda does not exist yet), and a copy on live for Dyrr's allow-list
  exactly like Stund's, though it does nothing on a server. It stays out of `server.ps1` on the
  same terms as Stund. Ships from the LHM-35 branch (H at your portal hides its pin, per player),
  which sits on LHM-34 (one pin per portal) and LHM-33 (a destroyed portal takes its pin). Its two scenarios were green on 2026-09-22 and have to be rerun on the new
  build, plus `varda-forgets-a-destroyed-portal` and `varda-hides-one-portal`.
- **Vandi's altar scenario now asks for `Eikthyrnir`** (`ddffac0`). That is the old name and is
  unconfirmed on 1.0; if it is wrong, Devkit's `location` step lists the names it knows.
- All of it was built on 2026-09-26 and none of it has run in game. Each gets its scenarios run
  before its zip is built, per the rule at the bottom of this file.

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
