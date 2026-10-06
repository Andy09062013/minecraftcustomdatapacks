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
- Heavy Duty Rifle: made from 2 Snipers (both are bows now), 5 sec reload after each shot, 2 arrows per shot, 2x Sniper damage, takes arrows or High Caliber Rounds
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
- Satchel: 5 pockets that each hold a full stack. Crouch while holding it to switch pockets

- Light Shard: glowstone dust + Shadow Shard
- Void Shard: throw a Shadow Shard into the void in any dimension and it floats back into your inventory
- Eclipse Sword: Light Shard over Void Shard over stick. Right click swaps forms
  - Light Form (7.5 dmg): hits charge 5 stages (weak hit +1/4, full hit +1/2, crit +1). At stage 5 it bursts for an extra 7.5 damage and gives 1.5 absorption hearts
  - Void Form (7.25 dmg): crits add 1 sec of Wither, every 3rd hit gives 1 absorption heart
- Orbital Strike Key: 2 Napalm Strikes + iron ingot
- Orbital Strike: 9 Orbital Strike Keys in a 3x3. Single use. Marks the block you look at (up to 256 blocks), or crouch to target yourself. Everyone online watches an 11 second cutscene: a giant orbital cannon drops in from above the clouds with escort drones, unfolds, charges for 7 seconds with a glowing charge bar, lightning arcs and a countdown, then fires a beam all the way down. Everyone is sent back as the white light explosion hits. The blast covers a 50x50 area, deals 500 damage over 5 seconds, digs a 50 block wide crater 14 deep, scatters fire, magma and lava across the crater floor, and throws up a mushroom cloud (the crater can be turned off in `/function shadow:menu`). The cannon then flies back up and warps out
- Eclipse Bow (menu only, not craftable). Tap right click to switch forms, hold to draw
  - Light Form: only works during the day, gives Light Arrows. Light beams gather on the bow while drawing. Shoots a straight piercing light shot with Sniper-like damage that bursts like a weaker Holy Hand Grenade
  - Void Form: infinite Void Arrows, dark aura while drawing. Damage x0.75 by day, x1.35 at night, x1.7 on a full moon night. Hits give Wither, block healing and add 10% damage taken for 8 seconds
- Blunderbuss (menu only, not craftable): a shotgun. Right click fires a spread of rock shrapnel that flies about 20 blocks. Uses 2 blocks per shot: cobblestone or cobbled deepslate fires 12 pellets (60 damage point blank), stone or deepslate fires 6 heavier chunks (66 damage point blank). Damage drops off fast with range. 1.2 second reload
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

The Eclipse Sword, Eclipse Bow and Blunderbuss add new enchantments and damage types, so the server needs a restart (not just /reload) the first time.

## Rageblade cutscene

When an Evolving Blade turns into the Rageblade, every online player gets pulled into a 13 second cutscene around the player who got it, then everyone goes back to where they were in their old gamemode. The rage timer gets 13 extra seconds so the cutscene doesn't eat it.

Play it yourself with `/function shadow:cutscene/rageblade`.

## Recipe book and item menu

All custom recipes unlock in the recipe book automatically. Datapacks can't add items to the creative menu, so use `/function shadow:menu` for a clickable list of every item. The bottom of the menu has an Orbital Strike griefing toggle: OFF keeps the cutscene and damage but skips the crater. Ops can also run `/function shadow:orb/grief_toggle`.

## Give commands

```
/function shadow:give/all
/function shadow:give/<item>
```
