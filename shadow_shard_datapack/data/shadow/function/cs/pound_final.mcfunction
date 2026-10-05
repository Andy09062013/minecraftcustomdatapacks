function shadow:cs/pound
loot replace entity @e[type=minecraft:item_display,tag=cs.anvsword,limit=1] contents loot shadow:evo/rage
title @a[tag=cs.in] times 0 2 10
title @a[tag=cs.in] subtitle ""
title @a[tag=cs.in] title {"text":"","font":"shadow:flash","color":"#ff7a00"}
playsound minecraft:block.anvil.land master @a[tag=cs.in] ~ ~1 ~1 3 0.5
playsound minecraft:item.totem.use master @a[tag=cs.in] ~ ~1 ~1 3 1.2
playsound minecraft:entity.blaze.shoot master @a[tag=cs.in] ~ ~1 ~1 3 0.5
particle minecraft:flame ~ ~1.1 ~1 0.1 0.1 0.1 0.35 120 force
particle minecraft:lava ~ ~1.1 ~1 0.4 0.2 0.4 0 30 force
particle minecraft:explosion ~ ~1.2 ~1 0 0 0 0 1 force
particle minecraft:end_rod ~ ~1.1 ~1 0.1 0.1 0.1 0.3 40 force
