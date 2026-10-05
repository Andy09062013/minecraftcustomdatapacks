execute if score #prep cs.t matches 1.. run return run function shadow:cs/prep
execute unless entity @e[type=minecraft:marker,tag=cs.anchor] run return run function shadow:cs/end
execute as @a[tag=cs.in] run spectate @e[type=minecraft:item_display,tag=cs.cam,limit=1] @s
execute if score #f cs.t matches ..59 run return run function shadow:cs/forge_tick
scoreboard players add #t cs.t 1
execute if score #t cs.t matches 201.. run return run function shadow:cs/end
execute as @e[type=minecraft:marker,tag=cs.anchor,limit=1] at @s run function shadow:cs/shot
function shadow:cs/props
