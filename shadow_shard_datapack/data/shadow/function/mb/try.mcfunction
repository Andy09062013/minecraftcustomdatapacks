execute unless block ~ ~ ~ #minecraft:replaceable run return run tellraw @s {"text":"📫 There's no room for a mailbox there","color":"red"}
execute unless block ~ ~1 ~ #minecraft:replaceable run return run tellraw @s {"text":"📫 There's no room for a mailbox there","color":"red"}
execute unless data entity @s respawn.pos run return run tellraw @s {"text":"📫 Sleep in a bed first, the mailbox goes near your bed","color":"red"}
data modify storage shadow:mbox d set from entity @s respawn.dimension
execute store success score #diff mb run data modify storage shadow:mbox d set from entity @s Dimension
execute if score #diff mb matches 1 run return run tellraw @s {"text":"📫 Your bed is in another dimension","color":"red"}
summon minecraft:marker ~ ~ ~ {Tags:["mb.tmp"]}
execute store result score #x mb run data get entity @e[type=minecraft:marker,tag=mb.tmp,limit=1] Pos[0]
execute store result score #y mb run data get entity @e[type=minecraft:marker,tag=mb.tmp,limit=1] Pos[1]
execute store result score #z mb run data get entity @e[type=minecraft:marker,tag=mb.tmp,limit=1] Pos[2]
kill @e[type=minecraft:marker,tag=mb.tmp]
execute store result score #a mb run data get entity @s respawn.pos[0]
execute store result score #b mb run data get entity @s respawn.pos[1]
execute store result score #c mb run data get entity @s respawn.pos[2]
scoreboard players operation #x mb -= #a mb
scoreboard players operation #y mb -= #b mb
scoreboard players operation #z mb -= #c mb
scoreboard players operation #x mb *= #x mb
scoreboard players operation #y mb *= #y mb
scoreboard players operation #z mb *= #z mb
scoreboard players operation #x mb += #y mb
scoreboard players operation #x mb += #z mb
execute if score #x mb matches 626.. run return run tellraw @s {"text":"📫 Too far! The mailbox has to be within 25 blocks of your bed","color":"red"}
function shadow:mb/place
