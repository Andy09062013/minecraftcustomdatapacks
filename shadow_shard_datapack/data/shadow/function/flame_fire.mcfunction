advancement revoke @s only shadow:flame_using
tag @s add shadow.flame_tick
scoreboard players set @s shadow.fcool 30
execute if score @s shadow.fuel matches ..0 run return run title @s actionbar {"text":"OUT OF FUEL","color":"red","bold":true}
scoreboard players remove @s shadow.fuel 1
function shadow:flame_meter
tag @s remove shadow.blue
tag @s add shadow.flamer
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #shadow:heat run tag @s add shadow.blue
execute anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ #shadow:heat run tag @s add shadow.blue
execute anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ #shadow:heat run tag @s add shadow.blue
execute anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ #shadow:heat run tag @s add shadow.blue
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~-1 ~ if block ~ ~ ~ #shadow:heat run tag @s add shadow.blue
execute anchored eyes positioned ^ ^ ^3 positioned ~ ~-1 ~ if block ~ ~ ~ #shadow:heat run tag @s add shadow.blue
execute if entity @s[tag=!shadow.blue] anchored eyes run function shadow:flame_fx_red
execute if entity @s[tag=shadow.blue] anchored eyes run function shadow:flame_fx_blue
execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.9 ~ as @e[type=!#shadow:not_living,tag=!shadow.flamer,distance=..1.0] run tag @s add shadow.flamed
execute anchored eyes positioned ^ ^ ^3 positioned ~ ~-0.9 ~ as @e[type=!#shadow:not_living,tag=!shadow.flamer,distance=..1.4] run tag @s add shadow.flamed
execute anchored eyes positioned ^ ^ ^4.5 positioned ~ ~-0.9 ~ as @e[type=!#shadow:not_living,tag=!shadow.flamer,distance=..1.8] run tag @s add shadow.flamed
execute anchored eyes positioned ^ ^ ^6 positioned ~ ~-0.9 ~ as @e[type=!#shadow:not_living,tag=!shadow.flamer,distance=..2.2] run tag @s add shadow.flamed
execute if entity @s[tag=!shadow.blue] as @e[tag=shadow.flamed] run function shadow:flame_hit_red
execute if entity @s[tag=shadow.blue] as @e[tag=shadow.flamed] run function shadow:flame_hit_blue
tag @e[tag=shadow.flamed] remove shadow.flamed
tag @s remove shadow.flamer
