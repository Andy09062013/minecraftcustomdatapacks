scoreboard players remove @s ebow.mk 1
execute store result score #cur ebow.hp run data get entity @s Health 100
execute if score #cur ebow.hp > @s ebow.hp run function shadow:ebow/unheal
execute if score #cur ebow.hp < @s ebow.hp run function shadow:ebow/extra
execute store result score @s ebow.hp run data get entity @s Health 100
scoreboard players operation #pt ebow.t = @s ebow.mk
scoreboard players operation #pt ebow.t %= #5 ebow.t
execute if score #pt ebow.t matches 0 run particle minecraft:dust{color:[0.3,0.0,0.45],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0 4
