scoreboard players operation #tmp shadow.id = @s shadow.id
tag @a remove shadow.pshooter
execute as @a if score @s shadow.id = #tmp shadow.id run tag @s add shadow.pshooter
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 4 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.8 120 force
particle minecraft:electric_spark ~ ~ ~ 2 2 2 0.6 150 force
particle minecraft:dust{color:[0.3,0.9,1.0],scale:4.0} ~ ~ ~ 2.5 2 2.5 0 200 force
particle minecraft:sonic_boom ~ ~1 ~ 1 1 1 0 3 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 6 0.8
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 4 1.4
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 3 0.6
execute as @e[type=!#shadow:not_living,tag=!shadow.pshooter,distance=..4] run damage @s 30 minecraft:player_explosion by @a[tag=shadow.pshooter,limit=1]
execute as @e[type=!#shadow:not_living,tag=!shadow.pshooter,distance=4..7] run damage @s 12 minecraft:player_explosion by @a[tag=shadow.pshooter,limit=1]
tag @a remove shadow.pshooter
