$execute if score @s vs.p matches 1.. unless score @s vs.p matches $(p) run return run tellraw @s {"text":"You already picked the other path. Reset to switch","color":"red"}
execute if score @s vs.l matches 4.. run return run tellraw @s {"text":"This path is already maxed","color":"gray"}
execute if score @s vs.c < #cp vs run return run function shadow:vs/poor
scoreboard players operation #pay vs = #cp vs
function shadow:vs/pay
$scoreboard players set @s vs.p $(p)
scoreboard players add @s vs.l 1
function shadow:vs/write
tellraw @s [{"text":"⬆ Path upgraded","color":"#9b4dff","bold":true}]
function shadow:vs/upgraded
