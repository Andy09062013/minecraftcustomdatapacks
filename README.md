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
- Heavy Duty Rifle: made from 2 Snipers, 5 sec reload, 2 arrows per shot, 2x Sniper damage, takes arrows or High Caliber Rounds
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
- Napalm Strike: walkie talkie. Marks the block you look at (up to 128 blocks), a random F-35, A-10 or Eurofighter Typhoon flies over and drops 7 napalm bombs that leave fire for 8 sec. No block damage, 45 sec cooldown
- Satchel: bundle plus a 5 slot side pocket

- Light Shard: glowstone dust + Shadow Shard
- Void Shard: throw a Shadow Shard into the void in any dimension and it floats back into your inventory
- Eclipse Sword: Light Shard over Void Shard over stick. Right click swaps forms
  - Light Form (7.5 dmg): hits charge 5 stages (weak hit +1/4, full hit +1/2, crit +1). At stage 5 it bursts for an extra 7.5 damage and gives 1.5 absorption hearts
  - Void Form (7.25 dmg): crits add 1 sec of Wither, every 3rd hit gives 1 absorption heart
- Motor Boat: 2x boat speed, no paddles, leaves ripples. Only runs on water (not land or ice). W/S throttle, A/D steer

## Motor Boat recipe

```
Redstone  (empty)  Planks
Iron      Planks   Planks
```

Any wood works and gives that wood's boat.

## Napalm Strike recipe

```
TNT  TNT            TNT
TNT  Flint and Steel TNT
Gunpowder  Letter  Gunpowder
```

Any book and quill works in the Letter slot.

## Notes

All custom items use their own item model, so without the resource pack they show as missing textures. The Evolving Blade keeps the vanilla sword looks for each tier. Old custom items in player inventories and ender chests update to the new models (and the new Heavy Duty Rifle lore) automatically within a second.

The Eclipse Sword adds a new enchantment and damage type, so the server needs a restart (not just /reload) the first time.

## Rageblade cutscene

When an Evolving Blade turns into the Rageblade, every online player gets pulled into an 8 second cutscene around the player who got it, then everyone goes back to where they were in their old gamemode. The rage timer gets 8.5 extra seconds so the cutscene doesn't eat it.

Play it yourself with `/function shadow:cutscene/rageblade`.

## Recipe book and item menu

All custom recipes unlock in the recipe book automatically. Datapacks can't add items to the creative menu, so use `/function shadow:menu` for a clickable list of every item.

## Give commands

```
/function shadow:give/all
/function shadow:give/<item>
```
