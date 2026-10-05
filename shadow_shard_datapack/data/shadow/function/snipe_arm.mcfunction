tag @s add shadow.snipe
data modify entity @s NoGravity set value 1b
execute store result entity @s damage double 0.03 run data get entity @s damage 100
execute store result score @s shadow.vx run data get entity @s Motion[0] 10000
execute store result score @s shadow.vy run data get entity @s Motion[1] 10000
execute store result score @s shadow.vz run data get entity @s Motion[2] 10000
scoreboard players set @s shadow.life 32
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.6
