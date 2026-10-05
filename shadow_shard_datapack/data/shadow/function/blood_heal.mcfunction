scoreboard players add @s shadow.healpend 3
execute if score @s shadow.healpend matches 2.. run scoreboard players add @s shadow.heal 1
execute if score @s shadow.healpend matches 2.. run scoreboard players remove @s shadow.healpend 2
execute if score @s shadow.healpend matches 2.. run scoreboard players add @s shadow.heal 1
execute if score @s shadow.healpend matches 2.. run scoreboard players remove @s shadow.healpend 2
particle minecraft:heart ~ ~2 ~ 0.3 0.2 0.3 0 2
