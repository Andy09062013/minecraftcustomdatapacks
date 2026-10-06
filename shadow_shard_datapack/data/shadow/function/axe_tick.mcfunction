scoreboard players add @s shadow.axet 1
scoreboard players operation #spin shadow.ev = @s shadow.axet
scoreboard players operation #spin shadow.ev %= #4 shadow.ev
execute if score #spin shadow.ev matches 0 run data modify entity @s transformation.left_rotation set value [0f,0f,0f,1f]
execute if score #spin shadow.ev matches 1 run data modify entity @s transformation.left_rotation set value [0f,0.7071f,0f,0.7071f]
execute if score #spin shadow.ev matches 2 run data modify entity @s transformation.left_rotation set value [0f,1f,0f,0f]
execute if score #spin shadow.ev matches 3 run data modify entity @s transformation.left_rotation set value [0f,0.7071f,0f,-0.7071f]
data modify entity @s start_interpolation set value 0
scoreboard players operation #me shadow.id = @s shadow.id
tag @a remove shadow.axeowner
execute as @a if score @s shadow.id = #me shadow.id run tag @s add shadow.axeowner
execute unless entity @a[tag=shadow.axeowner] run return run function shadow:axe_drop
execute if score @s shadow.axet matches 40.. run return run function shadow:axe_give
execute unless entity @a[tag=shadow.axeowner,distance=..80] run return run function shadow:axe_give
execute if entity @s[tag=shadow.axeout] run function shadow:axe_out
execute if entity @s[tag=!shadow.axeout] at @s run function shadow:axe_back
execute if entity @s[tag=shadow.axegive] run return 0
execute at @s positioned ~ ~-0.8 ~ as @e[type=!#shadow:not_living,tag=!shadow.axeowner,distance=..1.7] unless score @s shadow.axecd matches 1.. at @s run function shadow:axe_hit
execute at @s run particle minecraft:crit ~ ~ ~ 0.3 0.1 0.3 0 2
scoreboard players operation #spin shadow.ev = @s shadow.axet
scoreboard players operation #spin shadow.ev %= #4 shadow.ev
execute if score #spin shadow.ev matches 0 at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.5 1.4
tag @a remove shadow.axeowner
