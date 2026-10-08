execute if entity @s[type=minecraft:player,gamemode=!survival,gamemode=!adventure] run return 0
execute if entity @s[type=minecraft:player] run return run function shadow:lc/stick_player
scoreboard players add @s lc.n 1
scoreboard players operation @s lc.by = #by lc
execute store result score #hp lc run data get entity @s Health 100
scoreboard players add #hp lc 100
execute store result entity @s Health float 0.01 run scoreboard players get #hp lc
scoreboard players operation #n lc = @s lc.n
function shadow:lc/stuck_fx
