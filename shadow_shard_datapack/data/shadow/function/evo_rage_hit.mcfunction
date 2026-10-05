scoreboard players operation #f evo.v = #rem evo.v
scoreboard players operation #f evo.v *= #1000 evo.v
scoreboard players operation #f evo.v /= #1200 evo.v
execute if score #f evo.v matches ..9 run scoreboard players set #f evo.v 10
execute store result storage shadow:evo frac float 0.001 run scoreboard players get #f evo.v
item modify entity @s weapon.mainhand shadow:evo_bar
particle minecraft:flame ^ ^1.2 ^2 0.4 0.4 0.4 0.1 25
particle minecraft:crit ^ ^1.2 ^2 0.4 0.4 0.4 0.4 15
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.6 0.6
