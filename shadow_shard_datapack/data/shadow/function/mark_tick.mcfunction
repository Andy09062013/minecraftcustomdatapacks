scoreboard players remove @s shadow.mark 1
scoreboard players operation #spin shadow.ev = @s shadow.mark
scoreboard players operation #spin shadow.ev %= #4 shadow.ev
execute if score #spin shadow.ev matches 0 run particle minecraft:dust{color:[0.75,0.0,0.0],scale:1.3} ~ ~2.4 ~ 0.15 0.05 0.15 0 3
execute if score #spin shadow.ev matches 0 run particle minecraft:soul ~ ~2.4 ~ 0.1 0 0.1 0 1
execute if score @s shadow.mark matches ..0 run scoreboard players reset @s shadow.markby
