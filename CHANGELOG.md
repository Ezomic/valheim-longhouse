# Changelog

Notable changes to the Longhouse pack. Format follows
[Keep a Changelog](https://keepachangelog.com), and the pack uses
[semantic versioning](https://semver.org).

The pack's version is its own and does not track any member's. It moves when the **set**
changes: a mod added, removed, or repinned. What changed inside a mod is in that mod's
changelog.

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
