execute unless block ~ ~ ~ #minecraft:replaceable run return run title @s actionbar {"text":"No room for the radio there","color":"red"}
execute if entity @e[type=minecraft:marker,tag=rd.base,distance=..0.6] run return run title @s actionbar {"text":"There's already a radio there","color":"red"}
item replace entity @s weapon.mainhand with minecraft:air
execute store result storage shadow:radio q.yaw float 1 run data get entity @s Rotation[0]
function shadow:rd/place with storage shadow:radio q
playsound minecraft:block.metal.place block @a ~ ~ ~ 1 1
