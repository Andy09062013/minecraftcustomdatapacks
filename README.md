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
- Plasma Gun: charge for 15 sec to fire a piercing plasma blast
- Frost Staff: 3 stages of slow, slower, frozen
- Flamethrower: fuel meter, blue flames through fire or lava
- Berserker Armor: stronger under half HP, revives by burning durability. Any piece also patches you up from 3 hearts back to 5 hearts for a bit of durability (20 sec cooldown)
- Grenade, Pipebomb, Holy Hand Grenade: non griefing
- Golden Crucifix: mobs notice you 2x slower
- Evolving Blade: wood to stone to iron to diamond to netherite, then Rageblade for 60 sec
- Executioner's Axe: boomerang throw (2 hearts on the way out and 2 on the way back, always comes back within 2 sec), Executioner's Mark, executes at 15% (18% if marked)
- Letter: delivered by a mail bat, can carry an item. A pipebomb in a letter blows a small hole (about 2 blocks) when opened. If the player is offline the bat drops it in their Mailbox. If the bat gets killed the letter drops on the ground
- Mailbox: free every time you sleep in a bed (only one at a time). Right click a block within 25 blocks of your bed to place it. Placing a new one moves your old one. The red flag goes up when there's mail, right click it to take your letters. You get an alert when you join if mail is waiting
- Napalm Strike: walkie talkie. Marks the block you look at (up to 128 blocks), a random F-35, A-10 or Eurofighter Typhoon flies over high in the sky and drops 7 napalm bombs that leave fire for 8 sec. Each bomb explodes and leaves real fire (turn this off in `/function shadow:menu`, then it's fake fire with no block damage). 45 sec cooldown
- Satchel: 5 pockets that each hold a full stack. Crouch while holding it to switch pockets

- Light Shard: glowstone dust + Shadow Shard
- Void Shard: throw a Shadow Shard into the void in any dimension and it floats back into your inventory
- Eclipse Sword: Light Shard over Void Shard over stick. Right click swaps forms
  - Light Form (7.5 dmg): hits charge 5 stages (weak hit +1/4, full hit +1/2, crit +1). At stage 5 it bursts for an extra 7.5 damage and gives 1.5 absorption hearts
  - Void Form (7.25 dmg): crits add 1 sec of Wither, every 3rd hit gives 1 absorption heart
- Orbital Strike Key: 2 Napalm Strikes + iron ingot
- Orbital Strike: 9 Orbital Strike Keys in a 3x3. After you use it you get a Dormant Orbital Strike back, put it in the middle of 8 Orbital Strike Keys to wake it up again. Marks the block you look at (up to 256 blocks), or crouch to target yourself. Everyone online watches an 11 second cutscene: a giant orbital cannon drops in from above the clouds with escort drones, unfolds, charges for 7 seconds with a glowing charge bar, lightning arcs and a countdown, then fires a beam all the way down. Everyone is sent back as the white light explosion hits. The blast covers a 50x50 area, deals 500 damage over 5 seconds that ignores armor, Protection, Resistance, shields and hit cooldown, digs a 50 block wide crater 14 deep, scatters fire, magma and lava across the crater floor, and throws up a mushroom cloud (the crater can be turned off in `/function shadow:menu`). The cannon then flies back up and warps out
- Eclipse Bow (menu only, not craftable). Tap right click to switch forms, hold to draw
  - Light Form: only works during the day, gives Light Arrows. Light beams gather on the bow while drawing. Shoots a straight piercing light shot with Sniper-like damage that bursts like a weaker Holy Hand Grenade
  - Void Form: infinite Void Arrows, dark aura while drawing. Damage x0.75 by day, x1.35 at night, x1.7 on a full moon night. Hits give Wither, block healing and add 10% damage taken for 8 seconds
- Blunderbuss (menu only, not craftable): a shotgun. Right click fires a spread of rock shrapnel that flies about 20 blocks. Uses 2 blocks per shot: cobblestone or cobbled deepslate fires 12 pellets (60 damage point blank), stone or deepslate fires 6 heavier chunks (66 damage point blank). Damage drops off fast with range. 1.2 second reload
- Leech Crossbow: crossbow + spider eye. Shoots normal arrows that do no damage but stick a Leech on the target (players get a Leech item, it won't stick if their inventory is full)
  - Leeches deal small poison-like damage that can't kill below 10 leeches
  - 3+: heals the shooter a little (more with more leeches). 5+: drains durability from a random item and drops XP for the shooter. 7+: steals hunger. 10+: it can kill
  - Players get rid of leeches by throwing them out of their inventory. Mobs keep them, and tankier mobs need more than 10 to be killed
- Arrows: stick + iron nugget also makes 2 arrows
- Grappling Hook: pointed dripstone (or a dripstone block), lead, iron block in any row. Hold right click for 2 sec to fire a hook that flies a bit slower than a bow arrow. Hits a block: pulls you to it, through walls if needed. Hits a mob or player: deals half a heart and drags you to them. 5 sec cooldown with the white bar, 200 uses
- Battle Flag: paper, paper / sword, paper / stick (the sword goes in the middle, right column is paper). The sword you use sets the flag's look and power
  - Left click a player to pick them as an ally (it does basically no damage). Left click again to unpick
  - Right click sounds a warhorn. Keep the flag in your hand for up to 5 sec (switching items ends it early). A gold circle at your feet shows the range
  - You and your picked allies inside the circle get Strength, Speed, Regeneration I and Glowing, refreshed every second. Buffs last up to 10 sec total. 20 sec cooldown
  - Wooden: 4 blocks, Strength I, Speed I. Stone: 5 blocks, Strength I, Speed II. Iron: 6 blocks, Strength II, Speed II. Diamond: 7 blocks, Strength II, Speed III. Netherite: 8 blocks, Strength III, Speed III
- Reinforced Shield: 2 shields. Its durability is its HP (40 = 20 hearts). While raised it blocks every hit from any side and the damage goes into the durability instead. A single hit can never go through, even 1000 damage just breaks it. Axes can't disable it and it raises instantly. A light blue bubble shows around you while it's up
- Battery: iron ingot + Shadow Shard. Hold it in your offhand with the Mallet in your main hand and right click to charge the Mallet for 3 sec (10 sec cooldown, needs the Mallet stun ready). A charged stun shocks the target with 0.5 damage every half second and stuns longer: players 5 sec, mobs 4 sec, undead 2 sec, iron golems 10 sec, wardens 1.5 sec, the Ender Dragon 0.5 sec
- Void Scythe: crafted like an axe with 3 Void Shards and 2 sticks. Diamond axe damage, never breaks
  - Right click: Void Sweep, a wide swing with a bit more damage than a normal hit (1.5 sec cooldown)
  - Every 2nd hit on a player or 10th hit on a mob (fully charged) gives a Void Crystal. Unspent crystals shatter when you die
  - Sneak + right click (or `/trigger scythe`): upgrade menu. Damage up to 11 (5 levels), attack speed up to 1.4 (4 levels), Sweep damage and range (5 levels, the last one turns it into a 3 sec Tornado Spin that keeps hitting and speeds you up)
  - Pick one path: Night Hunter (more damage at night, level 4 lets you jump + right click at night to turn into a bat and fly for 5 sec with no armor) or Seismic Slam (jump + right click to slam down and stun everyone near you, level 4 also sends a stunning shockwave forward)
  - Maxing everything costs 76 crystals. Resetting costs 15 and gives back everything you spent
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
