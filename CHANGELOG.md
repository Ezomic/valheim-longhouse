# Changelog

Notable changes to the Longhouse pack. Format follows
[Keep a Changelog](https://keepachangelog.com), and the pack uses
[semantic versioning](https://semver.org).

The pack's version is its own and does not track any member's. It moves when the **set**
changes: a mod added, removed, or repinned. What changed inside a mod is in that mod's
changelog.

## [2.3.0] - pending Stund, Vandi, Malmr, Skaft 1.3.0, Rist 1.7.0, and new versions of Yoke, Vaettir, Utangard, Jafna and Vaka

Adds **Stund**, **Vandi** and **Malmr**, for nineteen members, and repins **Skaft 1.3.0**,
**Rist 1.7.0**, Yoke, Vaettir, Utangard, Jafna and Vaka.

Kept apart from 2.2.0 so that each release carries one Skaft version: 1.2.0 went with 2.2.0 and
1.3.0 goes here, and 1.3.0 could not have gone first anyway.

### Stund 1.0.0

`Day 43   17:45` on screen, in the game's own typeface. Top centre by default, any corner you
like.

The sun already tells you the time, and it is no use in a crypt, a mine, a fog bank or below
deck. That is where you want to know whether there is light left to sail home, whether one more
corridor is worth starting, or how much of the night is left.

Midnight is 00:00 and midday is 12:00, so sunrise falls near 06:15 and sunset near 17:45. That
is Valheim's day mapped onto twenty-four hours. The day number comes from the same place the
game reads it for the dawn message. The time is taken off the world clock rather than the
smoothed value the sun and fog are drawn with, which lags a couple of seconds of real time, or
minutes of game time on a twenty minute day.

Hides with the rest of the HUD, so cutscenes and the death screen stay clean.

Nobody else needs it. `Requirement.HostOnly`, every setting marked as yours, so a server cannot
decide where on your screen the clock sits or know that it is there.

### Skaft 1.3.0

Hammer out, Repair selected, point at a piece: `Damaged in reach: 13`. Point at an undamaged
one and it says `aim at a damaged piece`, since the sweep only follows a repair the game itself
just made. A swing at an intact wall does nothing however much is broken beside it.

The worn model appears below three quarters health and the broken one below a quarter, with
nothing shown above that, so a wall at 90% looks new.

The count is damage and distance only. Stamina, hammer durability, wards and a missing station
can still cut the swing short.

No line at all at Crafting 0. Skaft's troubleshooting section names that first.

### Rist 1.7.0

Sprinting could be free. A full hand of Tireless, Long wind and Long stride plus Eikthyr's power
took the run-stamina discount past 100%. Running now always costs at least a fifth of normal,
and none of the three capstones touches running any more: Tireless brings stamina back sooner
after you stop, Long wind adds regen, and Long stride jumps 15% higher without making the
landing hurt. Steady footing is 5% a rank, and Ox-backed's last rank halves the stamina you
spend walking overloaded instead of reducing stagger, since with Fader's power the two nearly
made you unstaggerable. Details are in Rist's own changelog.

### Vandi

Starred creatures get likelier in a biome whose boss you have killed. Each kill adds five
percentage points to vanilla's ten, up to twenty five extra, so a boss you have killed five times
leaves its biome spawning stars a third of the time. The boss itself comes back a star stronger
for each repeat kill, up to two.

It is all per player. Your own kills decide what you meet, and a kill counts for whoever made
the offering, even if they died before the boss did. Helping with someone else's boss earns you
nothing.

### Malmr

Vein mining. Hold a pickaxe and tap Alt to switch it on. Keep hitting any chunk of an ore deposit
and a bar under the crosshair fills for the whole deposit instead of breaking that chunk. At 100%
every chunk comes down at once, buried ones included. It costs the same swings, wear and stamina
as mining the deposit by hand, and saves you walking between chunks and digging out the ones
underground. Progress stays on the deposit, so you can leave and come back, or someone else can
finish it.

Each metal opens on its own: tin at Pickaxes 40, copper 50, iron 60, silver 70, flametal 80 and
bloodgold 90. Only the level you earned counts, so gear and food bonuses do not open a metal
early. You also need the boss of that metal's biome dead by your hand. With Vandi installed it has
to be the one-star version, which is your second kill of it.

Malmr has to be on the server and on every client. Vandi is recommended, not required.

### Utangard

A boss will not come to an altar in a biome your group has not earned. Until now one player
could carry an egg into the locked Mountains, kill Moder there, and start the Plains deadline for
everybody else. The offering is not used up. The Queen's door stays sealed the same way while the
Mistlands are locked, and the Sealbreaker stays in your pack.

Nothing gets locked away for good. Each altar stands in the biome the boss before it opens, so it
answers as soon as that biome does, by kills or by the deadline.

### Jafna

The hoe can build ground up now. When a flatten needs the ground higher than it is, Jafna raises
it and takes stone from your pack, at the rate the hoe's own Raise ground charges. The build panel
shows what the swing will cost before you make it, and going over ground that is already flat
costs nothing. Short of stone, the whole patch comes up part of the way and the next swing
finishes it. Before, a swing could only move the ground about a metre and anything higher had to
be raised by hand first.

### Vaka

Lights that burn resin or coal last twice as long on the same fuel. Cooking fires are unchanged.
Vaka's log lists which fires that covers when a world loads.

### Vaettir and Yoke

Some Deep North items were filed as Meadows items: the Elaking and Jotun trophies, the Elaking
hair bundle, and the Vanguard chestpiece with its cast and moulds. Yoke raised their stacks once
Eikthyr fell, and Vaettir let them be pulled from chests from Eikthyr on. The Jotun invasion
spawns in every biome, and the shared biome index read that as the Meadows.

Vaettir also fixes two things players ran into. Next to a hod jib, the chest total on the crafting
panel ran off the edge of its slot, so 169 read as 16. The line now shows what you carry against
the cost, then what the chests add, like `24/40 +169`, and shrinks to fit. Furrow could put a
second patch, or the next oak sapling, on a grid turned the same way but shifted over. New plants
now follow the bed already there, whatever the crop, and patches on open ground share one grid.
Turning the grid next to an existing bed keeps that bed's angle.

### On the Longhouse server

A biome the group has not earned is gentler. Food and running buffs burn 3 times faster there
instead of 5, and wounds heal at a fifth of the normal rate instead of not at all. You still
cannot eat, drink a mead or use a power inside, and you still leave Sapped. These are the
server's Utangard settings, so a server of your own keeps Utangard's defaults.

## [2.2.0] - 2026-09-22

Adds **Kvedja** and **Merki**, the fifteenth and sixteenth members, and repins **Skaft 1.2.0**,
**Core 1.4.0**, **Vaettir 1.6.2** and **Rist 1.6.0**.

A minor because the set grew, same as 2.1.0 when it added Jafna. Two members in one release is
still one minor, and the four repins ride along rather than going out as a patch of their own.

### Kvedja 1.0.0

A line in your chat window when you log in, read from the Longhouse site. It points at the two
boards, one for voting on what a mod should do next and one for bugs.

The text is not in the mod. It lives on the site and is edited there, so it changes without an
update to install or a server restart. `Enabled` false and it never asks.

### Merki 1.0.0

Everyone is on everyone's map, and the server is the one that decides. The "share position"
box is ticked and greyed out, and unticking it is not something a client can do - the server
overwrites the flag on its way in, so the box is no longer where the answer is kept.

Your own answer to it is kept as it was, not written over. A server that turns the rule off,
or drops the mod, hands everybody back the choice they had made.

When somebody dies, their gravestone appears on the other players' maps at the spot they fell,
with their name under it, for up to half an hour. Yours is already pinned by the game, so you
are never sent your own. Only the latest death is shown: dying again moves the gravestone
rather than adding a second. The server remembers it until it expires, so somebody who logs in
ten minutes later to help still gets it, with the time that is left rather than a fresh half
hour.

Two settings are off by default and make the map a local thing instead: a range in metres, and
same biome only. Both apply to the gravestones as well, so a death out of sight is a death you
are not told about.

Nothing is saved. A restarted server has forgotten every gravestone, and your own map drops
them when you log out.

The death half is reported by the client that dies, because a server never runs player death
code. That is why everybody needs it rather than just the host: somebody playing without it is
still on the map, and their deaths go unannounced.

### Skaft 1.2.0

The bench half of what the mod already did at the hammer. One press of Repair at a crafting
station repairs as many worn items as your Crafting allows: one at level 0, three around 25,
seven around 50, ten from 60. Ten is a full kit, so helmet, chest, legs, cape, weapon, shield,
bow and the three tools.

Repairs are free in vanilla, no materials, no durability, no stamina, so the skill only affects
how many items go in one press. Which items can be repaired is still the game's call, from the
recipe, the station and its level. A bench too low for your armour still refuses it.

Skill is granted per item, so ten items in one press raise Crafting by what ten presses would.

### Core 1.4.0

A mod can declare the prefabs it puts into the world, and anything can read them back.
ZNetScene holds a name and a GameObject, ObjectDB the same for items, ZoneSystem the same for
locations, and none of them records who added what, so a failed registration is
indistinguishable from a prefab you have not found yet.

Nothing in the pack behaves differently. The development menu is the first thing using it and
can now list what each mod put in the world and whether it is there. Mods on the shared
registrar declare their names for free, so no member mod changed.

### Vaettir 1.6.2

The creel rail's baskets have an inside. They were built as open shells with no thickness, and
the game draws one side of a surface and discards the other, so each basket showed the world
behind it where its far wall and its floor should have been. Every coil has a wall now, grown
inward so the outside of the basket is the shape it always was. The chute post had the same
hole and is mended with it.

Eleven warnings on a healthy launch, gone. The rail, the perch, the jib and the post each
warned per ingredient that an item "nothing can find" was named in their cost: Fine wood, Iron
nails, Leather scraps. They fired while the mod was still checking the price and all resolved a
pass later.

`ObjectDB.GetItemPrefab` goes through a table that is built once and is not ready the instant
the item list has something in it, so an early pass misses Fine wood and finds it on the next.
Prices are unchanged. A real misspelling in a config line still warns, once, after five tries
against a loaded database, and now names the item that was wrong.

### Rist 1.6.0

Armour from a runestone is a percentage now. **Thick-hided** gives +3% armour a rank instead of
a flat +2, and its rank 5 carving is another 5% rather than the stagger it used to grant, so a
fully carved stone is +20%. **Steady footing**'s carving is +5% armour for the same reason: it
has always granted a dose of whatever Thick-hided gives, and no stone hands out flat armour any
more.

The flat number was worth less the further you got, which is not what a stone you carve five
times should do. Once your armour is at least half the hit, the game works out what you take as
`damage x damage / (4 x armour)`, so what reaches you is inversely proportional to your armour
rather than reduced by a fixed amount: the old +10 took about a third off a hit at 20 armour and
under a tenth off the same hit at 100. It stopped being felt around the Plains, which is where
Rattennest raised it on the ideas board.

Ranks already carved are kept and buy the percentage instead. The flat value was better in
exactly one place - a hit more than twice your armour, where the game subtracts rather than
divides - and there +2 saves 2 damage against +5% of your armour, so it only won below 40.

There is also a `rist` console command for singleplayer and whoever is hosting, behind
`devcommands`. It prints a character's level, ranks and the armour the game is really using, and
can force a stone to a rank. The game's own cheat gate is "am I the server", so a client cannot
point it at Longhouse's records.

## [2.1.3] - 2026-09-21

Repins **Core 1.3.0**: a line the server sends can arrive in a voice.

### Core 1.3.0

A server can now say how a chat line it sends should be drawn: the ordinary voice as before, a
shout, which the game draws in yellow and in capitals, or a whisper, which it dims. It goes out
under a second name beside the old one, so a server still sending the old one is unaffected and
an older Core simply does not answer to the new name.

No mod in the pack sends a voice. The first thing to use it is the Longhouse server itself:
chat written on the site arrives as a shout from now on, which is honest about what it is,
because a site line reaches everybody wherever they happen to be standing. Dyrr's warning
before an idle kick stays in the ordinary voice, because that one is meant for one player.

## [2.1.2] - 2026-09-21

Repins **Dyrr 1.4.2**: the warning before an idle kick reaches the player it is about.

### Dyrr 1.4.2

The warning was sent as a chat message from a sender called "Server", and no client would draw
it - that name is not a platform user id, Valheim checks the sender's permission before it
shows anything, and an invalid id fails that check. The server said it, every client threw it
away, and the only warning before a disconnect was one nobody ever saw.

It goes through Core's chat line now, to that one player and nobody else, in the ordinary voice
rather than as a shout: a shout is what the whole world hears, and this is meant for one
person. It is written to the server log as well, so an admin can see it after the fact. This is
the half of the fix that needs Core 1.2.5, which the pack has carried since 2.0.19.

## [2.1.1] - 2026-09-20

Repins **Vaettir 1.6.1**, which is the fix for the three pieces 2.1.0 put in the hammer for
free. Update before building anything beside a stowing post.

### Vaettir 1.6.1

The creel rail, the spirit perch and the hod jib cost nothing at all in 2.1.0. Their recipes
are written out of resolved items rather than names, so they are written again once the item
database has loaded - and the code that did the writing read a field nothing ever assigned,
found nothing on every frame, and skipped all three in silence. Each piece kept the recipe it
got at build time, which on a client joining a server is written while the item database is
still the empty stub, so nothing resolved and the list came out empty. An empty requirement
list is a buildable that costs nothing, and it also reads as known, so all three stood in
everybody's hammer whether or not they had ever seen a heartwood.

The stowing post had the same hole and hid it better: its own cost came out empty too and the
heartwood was merged into nothing, leaving a post that cost one heartwood, or no post in the
menu at all for anyone who has never held one.

Both are priced from a loaded database now, per world, and a recipe is written only when every
name in it resolved.

The post's cost also moves on machines that have already run the mod. It went to 40 fine wood
and 20 bronze nails in 1.6.0, but BepInEx keeps the saved value, so no existing install ever
saw the new number - servers included. The config now carries a revision and a moved default
is applied once, only where the old one is still there untouched.

## [2.1.0] - 2026-09-20

Adds **Jafna 1.0.0** and repins **Sinka 1.2.0** and **Vaettir 1.6.0**. A minor bump rather
than a patch because the set grew: the pack's version moves when a mod is added, removed or
repinned, and the previous release was a repin.

### Vaettir 1.6.0

A stowing post is something you improve now rather than something you finish. Three pieces
stand beside it, each changing what it does, and the game's own station-extension motes show
which post a piece is serving - the same thing a chopping block draws to its workbench.

A **creel rail** makes the post hold exactly what a reinforced chest holds, 6x2 becoming 6x4,
and its spirit carry twenty items a trip instead of ten. 25 fine wood, 10 iron nails and 8
leather scraps: no heartwood, because it is joinery and it should be buildable the same
evening as the post. A **spirit perch** puts a second courier in the air for a heartwood, 25
fine wood, 6 iron nails and 6 silver. Taking either one down hands everything back.

A **hod jib** is the one that changes how crafting works. While a crafting station stands
within 20m of the post, the crafting panel counts what is in the chests around **that post**
and crafting spends out of them - but only materials from a biome whose boss is dead. Eikthyr
opens the Meadows, the Elder the Black Forest, and so on to Fader and the Ashlands, so a chest
full of black metal is not a shortcut past the Plains. Which biome an item belongs to is
derived from where it grows and what drops it rather than from a list, so a mod that adds an
ore lands somewhere sensible without being told. Benches only: not the hammer, not smelter or
kiln fuel. 1 heartwood, 35 fine wood, 10 iron nails and 2 chain.

**Three new prefab names become permanent for anyone who builds one** - `stow_rail`, `hod_jib`
and `stow_perch` - the same way `stow_post` already is. A world that loads without the mod
discards them silently.

Taking a rail down now spills what will not fit rather than refusing to shrink, which is what
breaking a chest has always done. And a post remembers its own size, so it opens at the size
it really is instead of opening at the widest a post can ever be and settling five seconds
later.

Two chests, two players and one craft were the part that had never been exercised. They are
now, on a second client against the dev server: a craft paid for out of a chest somebody else
owns, and two players spending from one chest with only one craft's worth in it. The material
goes down exactly once.

### Sinka 1.2.0

Chests stack. Vanilla refuses a chest on a chest outright - the placement test reads the
`m_supports` flag of the piece you are aiming at, and every chest has it off - and the wear
tick then destroys any piece that ends up unsupported, contents and all. Sinka answers both,
and narrowly: a chest holds up a chest and nothing else, so a wall or a torch on one is still
refused. **On this server it is safe because every player here runs the pack.** A player
without Sinka standing near a stack computes it the vanilla way and destroys the top chest,
which is why the setting carries that warning and why it is worth knowing before anyone
builds a wall of them on a server that is not this one.

Sharp stakes chain again. They never have: the piece keeps its colliders outside the subtree
Sinka measured, so it fell back to mesh bounds, came out deeper than it is wide, and put its
snap points on the panel's front and back faces rather than its two ends. Four pieces measure
from their colliders now and chain tighter than they did - the black metal, grausten and
warderobe chests, and the stakes themselves.

Every standing torch sinks into every pole, where 1.1.0 knew one torch and two poles. How much
of a torch shows is measured off its own fire rather than typed, which is what makes that
possible without standing each one on a pole first. And `Gap` is per prefab now, so a stake
wall can stand a hand apart in the same world where the chests sit flush.

Levelling with the hoe stops chasing your crosshair. Vanilla eases every point under the tool
toward the placement ghost's height, and the ghost sits wherever you last looked at the ground,
so two swings a step apart pull their shared overlap toward two different heights - which is
the real reason a large flat area is miserable to make, rather than the tool being small.
Jafna reads the flag the game already saves per grid point for "a terrain operation touched
this", and a swing covering ground an earlier swing shaped takes that height instead. Flat then
spreads outward from wherever it started, across sessions and across players.

It also adds a held height on Left Alt, a reach that grows with Crafting on the same curve
Skaft uses, the numbers on the build panel while a levelling tool is out, and a ward test
against the whole footprint rather than the single point vanilla checks.

Two things about it worth knowing before anyone reports them as faults, both documented in
Jafna's own README. Flattening is capped near a metre per point by vanilla's own clamp, so a
held height further than that is approached and not reached - raise the ground first. And Left
Alt is shared with vanilla's alt-placement key; it tested clean, and `HoldKey` is configurable
if a ghost ever misbehaves.

## [2.0.20] - 2026-09-20

Repins Rist to 1.5.1.

### Changed

- Rist repinned to 1.5.1: the runestone panel keeps its runes after a logout to the main menu,
  and a long capstone line wraps instead of being cut off.

## [2.0.19] - 2026-09-19

Repins Core to 1.2.5.

### Added

- Chat written on the Longhouse site can arrive in the in-game chat box, under the writer's
  name and "(site)", instead of the top-left corner. Core draws the line; the server sends it.
  Details are in Core's own changelog.

## [2.0.18] - 2026-09-19

Repins Dvala to 1.0.2.

### Fixed

- Restocked dungeons get their creatures back on the server, not just their chests and pickables.
  Details are in Dvala's own changelog.

## [2.0.17] - 2026-09-16

Repins Vaettir to 1.5.5.

### Fixed

- Thicket's Transplant entry is drawn in the cultivator's menu again. Valheim 1.0 rebuilt the
  build menu and stopped drawing entries of its kind on that tool. Details are in Vaettir's own
  changelog.

## [2.0.16] - 2026-09-15

Repins Sinka to 1.1.0.

### Added

- A standing wood torch aimed at the top of a 1m or 2m wood pole snaps down into it, centred,
  with its head showing above the pole. Details are in Sinka's own changelog.

## [2.0.15] - 2026-09-15

Repins Rist to 1.5.0.

### Added

- Six new Rist runestones: Quick chant (faster staff casting), Answering blow (a perfect dodge arms
  your next hit), Low draw (drawing a bow from a crouch keeps you sneaking), Unseen blow (harder sneak
  attacks), Deep draught (longer buff meads) and Oath-bound (a shorter forsaken power cooldown).

### Changed

- Rist's Quick draw also reloads crossbows faster, and its capstone is bow and crossbow damage.
  Details are in Rist's own changelog.

## [2.0.14] - 2026-09-14

Repins Rist to 1.4.1.

### Changed

- Rist's panel sits at the top of the screen instead of in the middle.

## [2.0.13] - 2026-09-14

Repins Rist to 1.4.0.

### Fixed

- Six of Rist's runestones did less than their tile said, or the opposite. Tireless, Long wind and
  Long stride now make sprinting cheaper, Quick draw now draws a bow faster, and Soft step and Quiet
  wake now make you harder to see instead of easier. Ranks already carved take effect.

### Changed

- Rist's panel stands the runestones in five groups, Combat, Survival, Endurance, Stealth and
  Utility, and fits the screen it is on, so it no longer runs off the bottom of a short window.
  Details are in Rist's own changelog.

## [2.0.12] - 2026-09-12

Repins Rist to 1.3.1.

### Fixed

- Rist's Far sight and Weatherly runestones did nothing in 2.0.11. Both work now, and ranks already
  carved take effect. Weatherly also makes you faster to windward and its capstone rows faster, and
  runestone values read as percentages. Details are in Rist's own changelog.

## [2.0.11] - 2026-09-12

**Fixes a broken 2.0.10.** If you installed 2.0.10, update. It was missing four mods and a
server running the full set will refuse you.

### Fixed

- **Dvala, Lur, Skaft and Vaka were missing from the pack.** They had been added to the set
  during 2.0.x by hand-editing `manifest.json`, and were never added to the member list in
  `tools/build-manifest.ps1`. Regenerating the pins for 2.0.10 rebuilt the file from that list
  and silently dropped all four, so 2.0.10 installed nine mods where the server expects
  thirteen. Updating the pack in a mod manager also left those four behind, because the pack no
  longer mentioned them.
- **The generator now refuses to drop a member.** It compares what it is about to write against
  the pack it is overwriting, and any package that would disappear is a hard error naming it.
  Taking a mod out of the pack needs `-AllowRemoval` and has to be meant. This is the second
  time a hand-edited manifest and the member list have disagreed, and the first time it reached
  Thunderstore.

## [2.0.10] - 2026-09-12

Repins every member.

Rist and Kynda carry the only code changes in the set. The other eleven are documentation
releases: Thunderstore renders a README from the uploaded package, so putting a rewritten one
on a mod page needs a version.

### Added

- Rist gains two runestones. **Far sight** widens the map reveal radius as you walk;
  **Weatherly** lets a ship point nearer the wind before the sail dies, with a tacking speed
  capstone. Rist's catalogue is also rebalanced: no runestone grants an inventory row any more,
  since Valheim 1.0 sells rows from the trader, and move speed is capped at 10% from a single
  source.

### Fixed

- Kynda's batch modifier did nothing. The key was read through the legacy Input class, which
  Valheim's new Input System does not reliably answer, so holding Shift at a smelter added one
  ore rather than three.
- A blast furnace could be filled past its capacity, and stayed that way. Vanilla checks
  capacity only on the client, and the value it checks is a round trip behind on a dedicated
  server.

### Changed

- Every member mod has a rewritten README. What the mod does and how to install it come first,
  then configuration, multiplayer behaviour, compatibility and troubleshooting. Config tables
  were checked against each plugin's own Config.Bind calls.

## [2.0.8] - 2026-09-11

Repins Vaettir to 1.5.3.

### Fixed

- The stowing post could not see the chests in a real base. Its search used a fixed
  256-collider buffer with no layer mask, and a buffer that fills is a truncation that reports
  nothing - every wall, beam, floor and terrain collider competed for those slots. Measured in
  a real base: over 1,024 colliders within 12m of one post, and all 24 of its chests invisible.
  It failed exactly where the mod is used and passed exactly where it is tested.

## [2.0.7] - 2026-09-11

Repins Vaettir to 1.5.2.

### Fixed

- The stowing post would not send its spirit anywhere: it sat idle beside a correctly
  configured chest, reporting that it had nowhere to go. 1.5.1 fixed that question for the
  destination chests and left the post asking it about itself, so the chests became reachable
  and the post still never set off.
- The post's hover counted everything it held and called that "with nowhere to go", so a post
  holding one placeable stack read the same as one holding something nothing wanted. It counts
  what it claims now.

## [2.0.6] - 2026-09-11

Repins Core to 1.2.3.

### Fixed

- A row bought from the trader drew its slots with no wooden panel behind them, and stayed
  that way for the rest of the session. Reported by a player; the panel only ever grew for
  rows a *mod* claimed, and buying one moves the baseline those are counted from.
- Every chest window was a row of wood too tall, above and below. The container window is a
  child of the player window, so the search for the inventory backdrop was finding the chest
  panel as well and growing it too.
- A chest window could end up below the screen once a character had bought every row a trader
  sells. It overlaps the inventory instead now, which is awkward and reachable.

## [2.0.5] - 2026-09-11

Repins Vaettir to 1.5.1.

### Fixed

- The stowing post could report having nowhere to go while a correctly configured chest stood
  in range, could send its spirit back and forth without ever delivering, and - once trips
  started landing again - could duplicate what it moved. Three bugs, each one hidden by the one
  before it, all older than Valheim 1.0.

  The duplication is the reason to update rather than to wait: it needed a trip to actually
  land, which the second bug made rare, so a post on 1.5.0 could be quietly multiplying a stack
  larger than ItemsPerTrip with nothing in the log to show for it.

## [2.0.4] - 2026-09-10

Repins Rist to 1.2.2.

### Fixed

- Quick study's capstone read "+2 m_skillLevelModifier at rank 5" instead of "+2 skill levels".
  The card was working; it was the label that was missing.

## [2.0.3] - 2026-09-10

Repins Rist to 1.2.1.

### Fixed

- **Rist's experience bar disappeared and did not come back.** On a server it went before you
  ever saw it; in singleplayer it went the first time you died or hid the HUD. The bar is a
  clone of the eitr panel, which vanilla keeps switched off for a character with no eitr, and
  the one write that brought it up was lost the first time the bar was hidden. Nothing was
  wrong with anyone's experience or levels - it was the display only, and the panel kept
  showing the right numbers throughout.

### Changed

- The "rist waiting" note now sits above the bar and follows it, rather than at a fixed screen
  position it had drifted away from.
- **Rist's bar positions are measured against your HUD's canvas scale now instead of in raw
  screen pixels**, so the position a server sets is the same visual position on every
  player's screen. If you had tuned `BarPosX` or `BarPosY` by hand in singleplayer, they mean
  something slightly different after this and may want re-nudging once. On a server the host's
  values apply either way.

## [2.0.2] - 2026-09-10

Repins Core to 1.2.2 and moves the BepInEx dependency to 5.4.2350.

### Fixed

- **A fifteen row inventory on the first login after the update.** Valheim 1.0.7 only asserts
  the row count for a character that already carries an `invrows` key, and writes the key
  without asserting anything for one that does not. Every character made before 1.0 is in that
  state exactly once, on its first 1.0 login, so Core never learned the real height and the
  grid came up fifteen tall. Nothing could be lost - the eviction fence held - and it cleared
  itself on the next login, but it was alarming and it was going to happen to everybody once.
  Core 1.2.2 learns the height on that login too.

### Changed

- **BepInEx dependency 5.4.2333 -> 5.4.2350.** 5.4.2333 predates Valheim 1.0; denikson rebuilt
  the pack for 1.0 on the day it shipped. Harmony is 2.9 in both, so nothing about how these
  mods patch the game changes.

## [2.0.1] - 2026-09-10

Repins Core to 1.2.1. **Anyone on 2.0.0 should update**: the Longhouse_Core 1.2.0 that pack
pins contains the 1.1.0 assembly, so the inventory row protection is missing from it and
items placed in a Rist-granted row can be destroyed on relog.

### Fixed

- **Longhouse_Core 1.2.0 -> 1.2.1.** No gameplay change in the pack itself. Core 1.2.0's
  package was built from a stale staging folder and shipped August's 1.1.0 binary under
  September's version number; 1.2.1 is the same release with the assembly it always claimed
  to have. Found by updating the live server to 2.0.0 and watching Core announce itself as
  1.1.0 on boot.

## [2.0.0] - 2026-09-10

**The Valheim 1.0 pack. Thirteen mods instead of nine, and every member rebuilt against the
new game.**

Valheim left Early Access on 2026-09-09 with Deep North, an achievements system, crossplay
across six platforms and a balance pass. **This pack does not work on pre-1.0 Valheim and the
1.1.x line does not work on 1.0.** Core compares the compiler build id, so a mismatch is a
refused connection rather than a degraded session. If you are staying on an older game build,
pin 1.1.7 and do not take this.

Major rather than minor, against this pack own rule that the version moves with the set,
because that break is what a major version is for and the version number is the only signal a
mod manager conveys.

### Joining

- **Lur** - sound a horn in one of Hildir dungeons and its mini-boss wakes again.
- **Skaft** - hammer repair reaches further the higher your Crafting skill. It was published
  standalone on 2026-09-02 and held out since, for a reason that turned out not to be Skaft:
  it is marked HostOnly, but Core read each mod requirement off the manifest and discarded it,
  so a Core server without Skaft refused every client that had it. Fixed in Core 1.2.0.
- **Vaka** - fires keep while you are away, and a single absence costs one fuel however long
  it was.
- **Dvala** - a dungeon left alone for thirty in-game days fills back up: chests restock, veins
  come back, and a spent spawner wakes. It registers no prefab, so unlike the rest of the set
  it can be added or pulled without costing anybody a built thing.

**Surge stays out**, as it has since the pack began.

### What 1.0 broke, and what it cost

Four members did not compile against the new game: Hoverable gained a member, Inventory.AddItem
gained a required flag, and PlayerProfile stat record became an array of ten as part of the
achievements system. Those are the loud failures.

Three more compiled and then failed at runtime, which is the half worth reading:

- **Yoke** was clamping over-limit stacks back down on load and saving them clamped, destroying
  the excess permanently. Its load-path guard targets one exact method, and 1.0 moved the clamp
  onto a different overload - so the guard silently stopped guarding.
- **Utangard** was entirely inert. One changed method signature threw out of PatchAll and took
  all twelve of its patches with it, while it still registered on the gate and still refused
  mismatched clients on behalf of a mod that was not running.
- **Core** could not apply its inventory load protection, because 1.0 added a second
  Inventory.Load overload and the patch became ambiguous.

All three are fixed. Core also now isolates its patch groups and applies the inventory pair
first, so a handshake failure can no longer take the protection that keeps items out of the bin
with it - that change caught the ambiguity above on its first run rather than eating a row.

### Also in this release

- **Kynda** no longer destroys what you built when its upgrades setting is switched off. That
  setting used to skip prefab registration, and ZNetScene discards any ZDO whose prefab name
  does not resolve - so one config edit deleted every Tun and Woodrack standing, and because the
  file is host-imposed a host could do it to everyone. It gates the build menu now and nothing
  else.
- **Skaft** and **Auki** were reading the wrong global key: GlobalKeys is the one implicitly
  numbered enum in the game API and 1.0 inserted ten members, moving NoWorkbench from 22 to 27.
  Read by name now.
- **Rist** works out which stat fields count from 1 by asking the game rather than from a list,
  so a rebalance cannot make it write 0.03 where it means 1.03.
- **Yoke** and **Hirsla** now say when a biome carries items no boss will ever unlock, instead
  of leaving it silent. Deep North is the first case.

### Also fixed, from an audit of the released mods

Ten paths to permanently destroyed save data and four that refused players, found by auditing
the twelve published mods against the failure classes Valheim 1.0 exposed. The ones a player
would have met:

- **Rist** granted its extra inventory rows before proving the guard that protects them was
  installed, and would delete every player's card history if its catalogue failed to load.
- **Yoke** raised stack sizes whether or not the guard that keeps stored stacks whole had
  actually replaced anything. It now ships vanilla sizes rather than unprotected ones.
- **Kynda** and **Vaettir** each had a config switch that skipped a prefab declaration rather
  than hiding a feature - and an undeclared prefab is not a missing piece, it is every one
  already built discarded from the world. Both register unconditionally now.
- **Utangard** put thirteen patches on with one call, so one changed signature took all of
  them; it also starved people when the seams that make the penalty escapable were missing.
- **Dyrr** refused every player at the door, with an accusation, when a client could not read
  its own travel record.
- **Lur** was offered by Hildir at a placeholder price and could not be bought at all.

### Unchanged

Sinka, Taum and Vaka needed no changes and keep their versions. Lur is at 1.1.0 for the store
fix above.

## [1.1.7] - 2026-08-29

**One repin, no set change: Yoke 1.0.5 to 1.1.0.**

Metals now get their bigger stacks when the boss of their own biome falls, instead of
all of them waiting on Bonemass. Copper and tin at the Elder, iron at Bonemass, silver
at Moder, black metal at Yagluth - the same rule every other item already followed.
Anyone past the Elder gets bigger copper and tin stacks as soon as they log in.

Nothing else in the set moved.

## [1.1.6] - 2026-08-29

**One repin, no set change: Vaettir 1.4.0 to 1.4.1.**

The planting grid would not turn on a server while turning perfectly in singleplayer.
Its angle is a float, so Core's config sync treated it as a rule the host decides and
put the host's value back every time a scroll changed it. It is declared personal now,
the way a keybind already was. The rules a server should decide - spacing, the skill
gates, the harvest numbers - are untouched and still host-decided.

Nothing else in the set moved.

## [1.1.5] - 2026-08-29

**One repin, no set change: Vaettir 1.3.1 to 1.4.0.**

Shift+E on a ripe crop now harvests the bed, reaching two metres at Farming 15 and
eight by 80. Plain E still picks exactly one, and only crops are ever taken - the grown
stage of something plantable, read from the game rather than from a list, so wild
berries, mushrooms, thistle and dandelion are untouched.

Nothing else in the set moved.

## [1.1.4] - 2026-08-29

**One repin, no set change: Vaettir 1.3.0 to 1.3.1.**

The planting grid shipped in 1.1.3 and did not survive first contact. It drew nothing
until the second plant of a bed, so the one plant that most needed aiming was placed
blind and fixed the rows for every plant after it; and its turn key was never received
at all, because Furrow read keys through the legacy Input class while Valheim runs on
the new Input System. Both are fixed, and the mouse wheel now turns the rows - which
costs nothing, since the game re-randomises a crop's facing after every placement
anyway.

Worth updating for anyone who plants. Nothing else in the set moved.

## [1.1.3] - 2026-08-29

**Five repins, no set change.** The set is the same nine mods.

- **Vaettir 1.2.1 to 1.3.0.** Transplant digs up the plant you are actually pointing
  at; the planting grid can be lined up with what you have built, drawn on the ground
  before you commit, and turned with the middle mouse button; and a ring says whether a
  sapling will have room to grow before the seed is spent - which the game itself does
  not check until ten seconds after it is too late.
- **Yoke 1.0.4 to 1.0.5.** Stack sizes were wrong for a lot of items, permanently and
  quietly: nineteen recipe outputs frozen at the wrong biome and twelve rows of
  Mistlands and Ashlands drops sitting in the meadows tier.
- **Dyrr 1.2.0 to 1.3.0.** The mod rule can be watched without being enforced, instead
  of the choice being enforce-everything or nothing.
- **Kynda 1.0.2 to 1.0.3.** A dedicated server stops chasing materials it can never
  load - 68,000 log lines a day on the live server, which had drowned a real fault.
- **Rist 1.1.0 to 1.1.1.** The plugin announced itself as 1.0.1 while packaged as
  1.1.0. Harmless while everyone runs the same build, and not harmless otherwise.

Core, Utangard, Sinka and Taum are unchanged. Core's only commit adds shared source
that is compiled into Yoke rather than into Core's DLL, so its bytes and its build id
are the same and nobody is forced to update by it.

### The generator had been wrong for two releases

The pins here are produced by `tools/build-manifest.ps1` from each member's own
manifest, precisely so a pack cannot pin a version nobody has. Sinka, Kynda and Taum
joined the set in 1.1.0 and were never added to the generator's member list - their
pins were hand-written into the manifest instead - so the generator and the file it
generates had disagreed ever since.

Running it for this release silently produced a **seven member pack from a nine member
set**. That is the one failure this script exists to prevent, and it is quieter than
the stale member name that broke it in 1.0.x, which at least refused to run. A pack one
member short is not a smaller pack: it is every player refused by Core's version gate,
for a reason none of them can see from inside the game. The list is corrected and the
pins below are generated.

## [1.1.2] - 2026-08-27

**One repin, no set change.**

- **Kynda 1.0.1 to 1.0.2.** The Tun's borrowed material is loaded by name now rather
  than by summoning the vendor camp around it, so it is painted correctly from the first
  moment instead of arriving magenta and healing.

## [1.1.1] - 2026-08-27

**Two repins, no set change.**

- **Vaettir 1.2.0 to 1.2.1.** Grid rows no longer drift out of line while planting.
- **Kynda 1.0.0 to 1.0.1.** The Tun is no longer magenta on a fresh world: a missing
  donor material now streams its carrier location in, and standing pieces heal in place.

## [1.1.0] - 2026-08-27

**Three mods join, and one grows.** The set moves from six to nine.

- **Sinka 1.0.0** (was Dovetail). Chests and fences that line up: snap points on every
  corner, and a ladder of them up fence ends so a fence can climb a hill.
- **Kynda 1.0.0** (was Stoker). Feed smelters and kilns by the batch, and build their
  two upgrades: the Tun beside a smelter, the Woodrack beside a kiln.
- **Taum 1.0.0.** Alt+E on a tamed boar or hen and it follows you; again and it stays -
  the wolves' own follow, opened to the farm animals.
- **Vaettir 1.1.0 to 1.2.0.** Thicket: dig up wild berry bushes and walk them home in
  your arms. Bonemeal: two bones and an entrail, richer harvests. And from Farming 10,
  the cultivator plants in a grid.

The two renames are new packages: Dovetail and Stoker were never published, so nothing
breaks - the names simply arrive in Old Norse like the rest of the set.

## [1.0.9] - 2026-08-26

**One pin moves: Yoke 1.0.3 to 1.0.4.** 1.0.8 pinned a Yoke whose package carried the
previous version's DLL - the stack-loss fix it announced never actually shipped. 1.0.4
is the same fix in an honestly packaged form. Skip 1.0.8.

## [1.0.8] - 2026-08-26

**One pin moves, urgently.** Yoke 1.0.2 to 1.0.3: stored stacks survive loading. A relog
could destroy the top half of any stack above its vanilla limit - 100 greydwarf eyes in a
chest read 50/100 afterwards - because stack limits are briefly vanilla in the moment
after login, and the game's inventory loader clamps to the limit of that moment. The
clamp is removed from the load path; nothing else changes.

## [1.0.7] - 2026-08-26

**Two pins move.**

- **Yoke 1.0.1 to 1.0.2.** Coins are back at their vanilla stack of 999. The stack cap
  was written as a ceiling on the multiplied result, which quietly cut anything whose
  vanilla stack already exceeded it - and coins, at 999, were the one item that did.
  The cap now limits growth only.

- **Dyrr 1.1.1 to 1.2.0.** The door works in both directions now: a player who is
  genuinely still - no movement, no camera - for 5 minutes is kicked, after a warning
  in their chat two minutes ahead. An AFK body holds a slot, keeps its zones simulated
  and blocks the night from being skipped. The disconnect screen says why, and the
  departure is posted to Discord like any other.

## [1.0.6] - 2026-08-25

**Five pins move.** Two of them fix a bug that was doing damage on the server, and the other
three are work that had been sitting unreleased.

### The one that matters

A biome could latch open for the whole group off a half-loaded world, permanently. It did: on
25 August the Swamp opened while seven of the nine characters on the roster had never met the
Elder, and because the gate never regresses, it stayed open.

`ZoneSystem.RPC_GlobalKeys` clears every global key and re-adds them one at a time, on every
client, every time anybody sets any key. Yoke's hook on `GlobalKeyAdd` fires inside that loop
and asked Utangard whether the group had cleared a boss - once per key, against a world that
was still filling in. With a partial roster the counted members can be exactly the two who had
just killed the Elder, and the latch saw a cleared group.

The same window made Yoke write **vanilla stack sizes** for bosses the group had already
killed, and nothing arrived afterwards to correct them, so they stayed wrong for the session.

**Utangard 1.2.1** refuses to latch while the keys are settling and no longer caches a roster
built from a half-filled list. **Yoke 1.0.1** marks on a key and acts once at end of frame.
Neither changes a rule, a number or a saved value. **A gate already latched open stays open** -
that is what never-regresses means, and unpicking it afterwards would be the worse promise.

### The other three

- **Core 1.1.0** - a host no longer takes your keybinds, and `Prefabs.cs` moves out of the DLL
  into shared source. The save-on-inventory-change guard is deliberately **not** in it.
- **Vaettir 1.1.0** - the sapling half. A planted seed draws greydwarfs in ramping waves out
  of the treeline, costs fifty, will not go in a base, and is Black Forest only.
- **Dyrr 1.1.1** - a refusal now says who was turned away, name and platform id, so the line
  that reaches Discord names a person rather than only a rule.

### Updating

Everyone has to. All five are inside Core's version gate, so a client on the old set is
refused rather than merely out of date. The Utangard fix in particular only does anything with
more than one player connected - it needs a key broadcast arriving at a client that did not
set it.

## [1.0.5] - 2026-08-19

**Core repinned to 1.0.2, for one fix: dying no longer eats what was on the extra rows.**
Nothing else moved, and Core itself moved as little as it could - 1.0.2 was cut from the
1.0.1 commit with that single patch applied on top, not from Core's current branch.

The bug was the worse half of one already fixed. Extra inventory rows survived a relog
because Core widened the player's grid before `Player.Load`; a **grave** got no such
treatment. A grave is born the right size and then round-trips through a ZDO that does not
carry the height, so it is rebuilt at the tombstone prefab's vanilla height and every item
below that line is instantiated, refused by a bounds check whose result vanilla discards, and
destroyed. Silent, and delayed: loot your grave straight away and it all looks fine; walk
away or relog first and the bottom row is gone. Which is why it read as random rather than as
a rule.

### This one is worth updating for

Every pin in a pack matters, but this one costs items rather than convenience, and it costs
them at exactly the moment a player is least able to tell what happened. **The server needs
it too** - Core's gate compares build ids, so a client on 1.0.2 and a server on 1.0.1 do not
disagree about graves, they do not connect at all.

## [1.0.4] - 2026-08-19

**Two pins move: Utangard to 1.2.0 and Dyrr to 1.1.0.** No member joins or leaves, and the
other four are the versions 1.0.3 already named.

Both moves are forced rather than chosen. Core's version gate compares the compiler's build
id, so a client on Utangard 1.1.0 and a server on 1.2.0 do not merely play by different rules -
the connection is refused. Leaving either pin behind while a server runs the new build locks
out everybody who installed the pack, which is the failure this pack exists to prevent.

What is inside the two, in one line each; the reasoning is in their own changelogs.

- **Utangard 1.2.0** widens the gate to a five metre band and stops health regeneration inside
  it, and gives the rules a compendium page so the person losing their food can read why. Both
  new rules are configurable and host-synced.
- **Dyrr 1.1.0** makes the client refuse a join into the wrong world on its own, whatever the
  server does, and names a character's home world on the select screen.

### The published pack is still 1.0.1

1.0.2 and 1.0.3 were assembled here and never uploaded, so a publish of this version carries
all three changes at once: the rewritten page, the Rist repin, and these two. Nothing is lost
by skipping the numbers - Thunderstore only requires that a version go up - and the entries
below stay where they are because they are the pack's history, not its release log.

## [1.0.3] - 2026-08-18

**Rist repinned to 1.1.0.** One pin moved, nothing else.

Rist now weights XP by which skill earned it, after the server's ledger showed half a
character's level had come from felling trees. The reasoning and the numbers are in Rist's own
changelog; what matters at pack level is that this pin **must** move. Longhouse Core's version
gate compares the compiler's build id, not the version string, so a client on the old Rist and
a server on the new one do not merely disagree about XP - the connection is refused. Pinning
1.0.1 here while a server runs 1.1.0 would lock out everyone who installed the pack.

### Two things to know before updating a server

- **Every character is re-priced once, on its next login.** Levels go down. Runestones already
  taken are kept, and no new pick is earned until the old level is passed again.
- **Rist's ledger moves to `v4` and older builds cannot read it**, which drops records rather
  than erroring. Copy `BepInEx/config/rist-ledger.txt` aside before updating.

## [1.0.2] - 2026-08-18

Page text only. **No member changed and no pin moved** - the set shipped in 1.0.1 is the set
here, byte for byte.

This is against the rule three paragraphs up, which says the pack's version moves when the set
changes. It moves anyway because Thunderstore versions are immutable: the page cannot be
corrected without a release, so the choice is a version that means nothing or a page that stays
wrong. The rule is about not renumbering the pack to track a member's bump, and that still
holds.

### Changed

- The page now says there is a server, near the top rather than buried under bug reporting.
  It carries the character rule up front, because finding that out after joining is how you
  lose a player rather than gain one, and it says plainly that the pack works alone so the
  page does not read as a recruitment funnel to everyone who only wanted the mods.
- Fixed `[Core](../core)`, a relative link that resolves in the repo and 404s on the package
  page, which is the only place this file is read by anyone who is not me.

## [0.1.0] - 2026-08-16

First assembly of the pack. **Not published.**

### Members

Six mods. Devkit is deliberately absent, and so is every mod that is published on its own
or has not been played.

| | |
| --- | --- |
| Core | the version gate the rest depend on |
| Yoke | quality of life |
| Rist, Utangard | progression and pressure |
| Vaettir, Dyrr | the spirits, and the door policy |

Held out, each for its own reason: Thralls, Tether, Stoker and Dovetail have never been
played through;
Surge, Fiends and Delve are published on their own; Nidling is a creature, and a
published creature commits the suite to its prefab name forever; Saga writes per-player
state and is at 0.1.0. Stow and Furrow are not separate mods any more - both ship inside
Vaettir, so the pack gets them through that member.

### Generated pins

- Pins are built by `tools/build-manifest.ps1` from each member's own `manifest.json`,
  so a pin cannot drift from the version that mod actually publishes.
- A missing or malformed member is a loud failure rather than a shorter pack. A pack one
  mod short leaves every player failing Core's version gate for a reason none of them can
  see from inside the game.
- That failure did its job and was then ignored: the list named `wither` after the mod
  became Utangard, so the generator refused to run and the manifest was hand-edited for
  two days instead. The pins here are generated again.

### Known limits

- **Nothing in this pack has been published**, so none of the pins resolve on Thunderstore
  yet. The pack is assembled ahead of the uploads rather than after them.
- Several members are at 0.x and have never been run in a session. The pack pins what
  exists, not what is finished.
