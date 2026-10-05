data modify storage shadow:ls x set from entity @s Pos[0]
data modify storage shadow:ls y set from entity @s Pos[1]
data modify storage shadow:ls z set from entity @s Pos[2]
execute store result storage shadow:ls y double 0.001 run data get storage shadow:ls y 1000
scoreboard players add @s shadow.healpend 3
execute if score @s shadow.healpend matches 2.. run scoreboard players add @s shadow.heal 1
execute if score @s shadow.healpend matches 2.. run scoreboard players remove @s shadow.healpend 2
execute if score @s shadow.healpend matches 2.. run scoreboard players add @s shadow.heal 1
execute if score @s shadow.healpend matches 2.. run scoreboard players remove @s shadow.healpend 2
playsound minecraft:entity.generic.drink player @a ~ ~ ~ 0.8 0.6
particle minecraft:heart ~ ~2.1 ~ 0.3 0.1 0.3 0 2
