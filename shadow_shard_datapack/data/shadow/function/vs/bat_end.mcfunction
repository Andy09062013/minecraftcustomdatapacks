tag @s remove vs.inbat
scoreboard players set @s vs.bt 0
execute on vehicle if entity @s[tag=vs.batg] run function shadow:vs/bat_kill
ride @s dismount
effect clear @s minecraft:invisibility
effect give @s minecraft:slow_falling 4 0 true
attribute @s minecraft:armor modifier remove shadow:vs_bat
attribute @s minecraft:armor_toughness modifier remove shadow:vs_bat
particle minecraft:large_smoke ~ ~1 ~ 0.4 0.6 0.4 0.05 30 force
playsound minecraft:entity.bat.death player @a ~ ~ ~ 1 0.7
