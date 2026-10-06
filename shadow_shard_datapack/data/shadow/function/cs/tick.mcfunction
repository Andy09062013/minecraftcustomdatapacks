scoreboard players add #t cs.t 1
execute unless entity @e[type=minecraft:marker,tag=cs.anchor] run return run function shadow:cs/end
execute if score #t cs.t matches 261.. run return run function shadow:cs/end
execute as @a[tag=cs.in] run spectate @e[type=minecraft:item_display,tag=cs.cam,limit=1] @s
execute as @e[type=minecraft:marker,tag=cs.anchor,limit=1] at @s run function shadow:cs/shot
function shadow:cs/props
