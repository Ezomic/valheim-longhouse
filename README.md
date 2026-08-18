# Longhouse

Every Ezomic mod, pinned to one set that a server will accept.

This is a **pack, not a mod**. There is no DLL here and nothing to patch; the package is a
manifest naming each mod at an exact version, plus this file and an icon. Installing it
installs all of them.

## There is a server

The pack exists because of one. **Longhouse** is a small EU server on Amsterdam time running
exactly this set: fresh world, hard combat difficulty, everything else vanilla, resources at
1x. No application and no activity requirements.

[The Discord](https://discord.gg/hJzAVaZ5wb) is the only door. Connection details are posted
inside once you are through it.

Two things worth knowing before you decide. Your viking has to be new and must never load
another world, because Valheim permanently records every world a character has visited and
never removes the record, so a single trip into your own save locks that character out of the
server for good. It is enforced by [Dyrr](https://thunderstore.io/c/valheim/p/Ezomic/Dyrr/),
which is in this pack and off by default for everyone else.

And none of that is a condition of using the pack. Every mod in here works on your own world,
alone, with the door policy switched off. The server is an invitation, not the price.

## Why a pack rather than a profile code

The mods share [Core](https://thunderstore.io/c/valheim/p/Ezomic/Longhouse_Core/), which compares versions *and* the compiler's build id at
connect time and refuses a client that does not match the server. That gate is the whole
reason a stranger can be handed a folder of DLLs and trusted to join: a mismatch is a closed
door rather than an hour of play into a world that quietly disagrees with itself.

A pack is what makes the gate never fire on someone who did nothing wrong. Exact pins mean
every person who installs Longhouse is holding a byte-identical set, so "did you get the
right version" stops being a question anyone has to ask in Discord.

An r2modman profile code does roughly the same job and is worse at it. A code is opaque:
you cannot read what is in it before you accept it, there is no history, and last week's code
is gone. A pack has a version, a changelog, and every previous version stays on Thunderstore.

## What is in it

The set a server holds everyone to - not the whole shelf. **Devkit is deliberately absent**:
it is the in-game menu the others are tested through, and it has no business on someone
else's machine. Some mods are published on their own and are nobody's obligation to install;
others are held back because they have not been played, and a pack member is a promise about
how a server plays. The member list in `tools/build-manifest.ps1` carries the reason for each
one, beside the mod it applies to.

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

It reads each member's own `manifest.json` (the same file that mod's package is built from,
so the pin cannot drift from what is actually published) and rewrites `manifest.json` here.
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
changes: a mod added, removed, or repinned. What changed in each is in that mod's own
changelog; what changed in the *set* is in [CHANGELOG.md](CHANGELOG.md).

## Reporting bugs

[The Discord](https://discord.gg/hJzAVaZ5wb) is the fastest route for anything in the
pack, and the right one when you cannot tell which mod is responsible. That is most of
the time, and it is the reason to ask here rather than guess at one mod's issue tracker.
Issues on [the pack repo](https://github.com/Ezomic/valheim-longhouse) work too.

Bring `BepInEx\LogOutput.log` if you can, and say whether you were on a server or your
own world. It names every mod that loaded and its version, which is usually the first
thing worth knowing.
