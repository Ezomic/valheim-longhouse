# Longhouse

Every Ezomic mod, pinned to one set that a server will accept.

This is a **pack, not a mod**. There is no DLL here and nothing to patch — the package is a
manifest naming each mod at an exact version, plus this file and an icon. Installing it
installs all of them.

## Why a pack rather than a profile code

The mods share [Core](../core), which compares versions *and* the compiler's build id at
connect time and refuses a client that does not match the server. That gate is the whole
reason a stranger can be handed a folder of DLLs and trusted to join: a mismatch is a closed
door rather than an hour of play into a world that quietly disagrees with itself.

A pack is what makes the gate never fire on someone who did nothing wrong. Exact pins mean
every person who installs Longhouse is holding a byte-identical set, so "did you get the
right version" stops being a question anyone has to ask in Discord.

An r2modman profile code does roughly the same job and is worse at it. A code is opaque —
you cannot read what is in it before you accept it, there is no history, and last week's code
is gone. A pack has a version, a changelog, and every previous version stays on Thunderstore.

## What is in it

Every mod meant for a player. **Devkit is deliberately absent**: it is the in-game menu the
others are tested through, and it has no business on someone else's machine.

Some of these do their work on the server rather than the client, and are in the pack anyway.
That is not an oversight. A client without a content mod's prefabs cannot resolve the hashes
in the ZDOs the server sends, and ZNetScene **discards a ZDO whose prefab name does not
resolve** rather than complaining. The creature or the dungeon does not appear, nothing is
logged, and it looks like the server is broken.

## The pins are generated

Exact pins mean any single mod's version bump makes this manifest wrong. Hand-editing fifteen
lines every release is the kind of chore that gets skipped once and then ships a pack pinning
a version nobody has, so it is a build step instead:

```powershell
.\tools\build-manifest.ps1
```

It reads each member's own `manifest.json` — the same file that mod's package is built from,
so the pin cannot drift from what is actually published — and rewrites `manifest.json` here.
A member that is missing or malformed is a **loud failure**, not a silently shorter pack,
because a pack one mod short leaves every player failing the version gate for a reason none
of them can see.

The member list inside the script is explicit rather than "every folder with a manifest".
Devkit has a manifest too, and a mod that is written but not ready should not join the pack
the moment it exists.

Pass `-PackVersion` to renumber; with no argument it keeps whatever the manifest already
says, so refreshing pins never silently renumbers the pack.

## Versioning

The pack's version is its own and does not track any member's. It goes up when the set
changes — a mod added, removed, or repinned. What changed in each is in that mod's own
changelog; what changed in the *set* is in [CHANGELOG.md](CHANGELOG.md).
