execute as @a[tag=orb.in] run spectate @e[type=minecraft:item_display,tag=orb.cam,limit=1] @s
execute as @e[type=minecraft:marker,tag=orb.anchor,limit=1] at @s run function shadow:orb/sky
