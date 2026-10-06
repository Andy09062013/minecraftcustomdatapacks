scoreboard players operation #tmp shadow.id = @s shadow.id
tag @a remove shadow.hthrower
execute as @a if score @s shadow.id = #tmp shadow.id run tag @s add shadow.hthrower
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.4 80 force
particle minecraft:falling_dust{block_state:"minecraft:gold_block"} ~ ~1 ~ 2 1.5 2 0 120 force
particle minecraft:wax_on ~ ~1 ~ 2 1.5 2 0 80 force
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.6 90 force
playsound minecraft:block.bell.use block @a ~ ~ ~ 3 0.8
playsound minecraft:item.totem.use block @a ~ ~ ~ 1.5 1.6
playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 2 1.6
scoreboard players set #dmg shadow.dmg 18
execute as @e[type=!#shadow:not_living,tag=!shadow.hthrower,distance=..2] at @s run function shadow:holy_hit
scoreboard players set #dmg shadow.dmg 10
execute as @e[type=!#shadow:not_living,tag=!shadow.hthrower,distance=2..4] at @s run function shadow:holy_hit
scoreboard players set #dmg shadow.dmg 5
execute as @e[type=!#shadow:not_living,tag=!shadow.hthrower,distance=4..5] at @s run function shadow:holy_hit
tag @a remove shadow.hthrower
