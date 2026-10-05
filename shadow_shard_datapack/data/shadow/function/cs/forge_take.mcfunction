kill @e[type=minecraft:item_display,tag=cs.anvsword]
kill @e[type=minecraft:item_display,tag=cs.hammer]
loot replace entity @e[tag=cs.actor,limit=1] weapon.mainhand loot shadow:evo/rage
playsound minecraft:item.armor.equip_netherite master @a[tag=cs.in] ~ ~ ~ 3 0.8
particle minecraft:flame ~ ~1.3 ~ 0.3 0.4 0.3 0.05 30 force
