execute if entity @a[tag=shadow.heavyer,scores={shadow.reload=1..}] run return run function shadow:heavy_reloading
execute as @a[tag=shadow.heavyer,gamemode=!creative] store result score #n heavy.ok run clear @s #minecraft:arrows 0
execute if entity @a[tag=shadow.heavyer,gamemode=!creative] if score #n heavy.ok matches ..0 run return run function shadow:heavy_dud
clear @a[tag=shadow.heavyer,gamemode=!creative] #minecraft:arrows 1
data modify entity @s pickup set value 0b
tag @s add shadow.snipe
data modify entity @s NoGravity set value 1b
execute store result entity @s damage double 0.06 run data get entity @s damage 100
execute store result score @s shadow.vx run data get entity @s Motion[0] 10000
execute store result score @s shadow.vy run data get entity @s Motion[1] 10000
execute store result score @s shadow.vz run data get entity @s Motion[2] 10000
scoreboard players set @s shadow.life 45
data modify entity @s PierceLevel set value 2b
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 1.6
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 3 0.5
particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0.05 25 force
particle minecraft:flame ~ ~ ~ 0.15 0.15 0.15 0.08 15 force
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute as @a[tag=shadow.heavyer] at @s run function shadow:heavy_recoil

scoreboard players set @a[tag=shadow.heavyer] shadow.reload 100
