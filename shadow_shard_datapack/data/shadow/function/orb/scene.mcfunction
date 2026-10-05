execute if score #ot orb matches 85 as @a[tag=orb.in] run tp @s @e[type=minecraft:item_display,tag=orb.rcam,limit=1]
execute if score #ot orb matches ..84 as @a[tag=orb.in] run spectate @e[type=minecraft:item_display,tag=orb.scam,limit=1] @s
execute if score #ot orb matches 85.. as @a[tag=orb.in] run spectate @e[type=minecraft:item_display,tag=orb.rcam,limit=1] @s
execute if score #ot orb matches ..84 as @e[type=minecraft:marker,tag=orb.sanchor,limit=1] at @s run function shadow:orb/space
execute if score #ot orb matches 85.. as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s run function shadow:orb/rcam_move
