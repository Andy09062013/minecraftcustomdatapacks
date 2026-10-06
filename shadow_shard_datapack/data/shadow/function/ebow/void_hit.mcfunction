effect give @s minecraft:wither 5 1
execute unless score @s ebow.mk matches 1.. store result score @s ebow.hp run data get entity @s Health 100
scoreboard players set @s ebow.mk 160
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 30 force
particle minecraft:squid_ink ~ ~1 ~ 0.3 0.4 0.3 0.02 10 force
playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 0.5 1.6
