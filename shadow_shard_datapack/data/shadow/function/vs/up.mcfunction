$execute if score @s $(o) matches $(m).. run return run tellraw @s {"text":"$(n) is already maxed","color":"gray"}
$execute if score @s vs.c < $(c) vs run return run function shadow:vs/poor
$scoreboard players operation #pay vs = $(c) vs
function shadow:vs/pay
$scoreboard players add @s $(o) 1
function shadow:vs/write
$tellraw @s [{"text":"⬆ $(n) upgraded","color":"#9b4dff","bold":true}]
function shadow:vs/upgraded
