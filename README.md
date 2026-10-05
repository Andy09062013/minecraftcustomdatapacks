# Minecraft Custom Datapacks

## Packs

- `shadow_shard_datapack/` datapack. Put it in `world/datapacks/`.
- `shadow_textures_resourcepack/` resource pack with the item textures and custom sounds. Put it in `resourcepacks/`.

Zip the folder contents (so `pack.mcmeta` is at the root of the zip) or drop the folders in as is.

## Items

- Shadow Shard: 20 sec of invis, speed, jump, resistance, fire res and infinite jump
- Launch Pearl: launches you where you look, no fall damage
- Explosive Mace: explodes on mob hits
- Super Mace: launches you up, then slams the target for huge damage and breaks
- Mallet: 2 sec stun, 15 sec cooldown
- TNT Crossbow: shoots non griefing TNT from the offhand
- Blood Crossbow: costs HP to shoot, heals on hit
- Sniper: 3x damage straight shots
- Heavy Duty Rifle: made from 2 Snipers, 5 sec reload, 4 arrows per shot, 1.5x Sniper damage
- High Caliber Round: 3x damage arrow with glowing and poison
- Hungry Crossbow: steals hunger from players
- Plasma Gun: charge for 15 sec to fire a piercing plasma blast
- Frost Staff: 3 stages of slow, slower, frozen
- Flamethrower: fuel meter, blue flames through fire or lava
- Berserker Armor: stronger under half HP, revives by burning durability
- Grenade, Pipebomb, Holy Hand Grenade: non griefing
- Golden Crucifix: mobs notice you 2x slower
- Evolving Blade: wood to stone to iron to diamond to netherite, then Rageblade for 60 sec
- Executioner's Axe: boomerang throw, Executioner's Mark, executes at 15% (18% if marked)
- Letter: delivered by a mail bat, can carry an item. A pipebomb in a letter blows a small hole (about 2 blocks) when opened
- Napalm Strike: walkie talkie. Marks the block you look at (up to 128 blocks), a fighter jet flies over and drops 7 napalm bombs that leave fire for 8 sec. No block damage, 45 sec cooldown
- Satchel: bundle plus a 5 slot side pocket

## Napalm Strike recipe

```
TNT  TNT            TNT
TNT  Flint and Steel TNT
Gunpowder  Letter  Gunpowder
```

Any book and quill works in the Letter slot.

## Give commands

```
/function shadow:give/all
/function shadow:give/<item>
```
