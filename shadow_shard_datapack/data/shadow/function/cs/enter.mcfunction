tag @s add cs.in
data modify storage shadow:cs cur set value {}
execute store result storage shadow:cs cur.id int 1 run scoreboard players get @s shadow.id
data modify storage shadow:cs cur.x set from entity @s Pos[0]
data modify storage shadow:cs cur.y set from entity @s Pos[1]
data modify storage shadow:cs cur.z set from entity @s Pos[2]
data modify storage shadow:cs cur.yaw set from entity @s Rotation[0]
data modify storage shadow:cs cur.pitch set from entity @s Rotation[1]
data modify storage shadow:cs cur.dim set from entity @s Dimension
function shadow:cs/save with storage shadow:cs cur
execute if entity @s[gamemode=survival] run scoreboard players set @s cs.gm 0
execute if entity @s[gamemode=creative] run scoreboard players set @s cs.gm 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s cs.gm 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s cs.gm 3
gamemode spectator @s
tp @s @e[type=minecraft:item_display,tag=cs.cam,limit=1]
spectate @e[type=minecraft:item_display,tag=cs.cam,limit=1] @s
effect give @s minecraft:darkness 3 0 true
