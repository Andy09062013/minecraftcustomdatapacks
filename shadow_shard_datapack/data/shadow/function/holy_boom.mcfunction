scoreboard players operation #tmp shadow.id = @s shadow.id
tag @a remove shadow.hthrower
execute as @a if score @s shadow.id = #tmp shadow.id run tag @s add shadow.hthrower
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.5 120 force
particle minecraft:falling_dust{block_state:"minecraft:gold_block"} ~ ~1 ~ 3 2 3 0 200 force
particle minecraft:wax_on ~ ~1 ~ 3 2 3 0 120 force
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.8 150 force
playsound minecraft:block.bell.use block @a ~ ~ ~ 4 0.6
playsound minecraft:item.totem.use block @a ~ ~ ~ 2 1.4
playsound minecraft:block.beacon.activate block @a ~ ~ ~ 3 1.2
scoreboard players set #dmg shadow.dmg 40
execute as @e[type=!#shadow:not_living,tag=!shadow.hthrower,distance=..2] at @s run function shadow:holy_hit
scoreboard players set #dmg shadow.dmg 25
execute as @e[type=!#shadow:not_living,tag=!shadow.hthrower,distance=2..4] at @s run function shadow:holy_hit
scoreboard players set #dmg shadow.dmg 12
execute as @e[type=!#shadow:not_living,tag=!shadow.hthrower,distance=4..6] at @s run function shadow:holy_hit
scoreboard players set #dmg shadow.dmg 5
execute as @e[type=!#shadow:not_living,tag=!shadow.hthrower,distance=6..8] at @s run function shadow:holy_hit
tag @a remove shadow.hthrower
