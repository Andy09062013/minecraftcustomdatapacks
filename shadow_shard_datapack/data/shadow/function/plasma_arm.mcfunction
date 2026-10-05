scoreboard players operation #c shadow.pc = @a[tag=shadow.plasmer,limit=1] shadow.pc
execute if score #c shadow.pc matches ..0 run scoreboard players set #c shadow.pc 1
tag @s add shadow.snipe
data modify entity @s NoGravity set value 1b
scoreboard players operation #k shadow.pc = #c shadow.pc
scoreboard players operation #k shadow.pc += #150 shadow.pc
execute store result score @s shadow.vx run data get entity @s Motion[0] 10000
execute store result score @s shadow.vy run data get entity @s Motion[1] 10000
execute store result score @s shadow.vz run data get entity @s Motion[2] 10000
scoreboard players operation @s shadow.vx *= #k shadow.pc
scoreboard players operation @s shadow.vy *= #k shadow.pc
scoreboard players operation @s shadow.vz *= #k shadow.pc
scoreboard players operation @s shadow.vx /= #150 shadow.pc
scoreboard players operation @s shadow.vy /= #150 shadow.pc
scoreboard players operation @s shadow.vz /= #150 shadow.pc
scoreboard players operation @s shadow.life = #c shadow.pc
scoreboard players operation @s shadow.life /= #3 shadow.pc
scoreboard players add @s shadow.life 10
scoreboard players operation #pd shadow.pc = #c shadow.pc
scoreboard players add #pd shadow.pc 80
execute store result entity @s damage double 0.025 run scoreboard players get #pd shadow.pc
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 1.4
execute if score #c shadow.pc matches 300.. run function shadow:plasma_max
