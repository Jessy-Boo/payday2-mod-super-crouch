# payday2-mod-super-crouch

Crouch so low the game can not shoot you.

## what it actually does

The old readme said crouching takes your dodge to 100%. That was a lie, or at least a different mechanic. The code is simpler and dumber: while you are crouching, `PlayerDamage:damage_bullet` returns immediately and the game never processes the hit at all. No dodge roll, no RNG, bullets just stop existing at the point of contact.

Scope, since it matters:

- bullet damage only. melee, explosions, tazers, cloakers, and everything else that does not go through `damage_bullet` still hurts you
- standing up un-crouches you right back into mortal territory
- nothing is toggled or configurable. crouch = immortal, stand = meat

## install

1. install [SuperBLT](https://superblt.znix.xyz) first
2. drop the `Super Crouch` folder into your Payday 2 `mods` directory
3. hold ctrl. that is the whole strategy

## warnings

- this is a cheat mod. crouched godmode is very visible to anyone in the lobby, so use it where everyone consented
- one small file hooking `PlayerDamage`, no shared framework, no settings
- written mid-2026, not re-tested against later game updates

## files

- `Super Crouch/main.lua` — the whole trick, about 12 lines of it
- `Super Crouch/mod.txt` — SuperBLT hook manifest
