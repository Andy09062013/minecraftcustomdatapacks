execute if entity @s[nbt={inGround:1b}] run return run function shadow:snipe_stop
execute if score @s shadow.life matches ..0 run return run function shadow:snipe_stop
scoreboard players remove @s shadow.life 1
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s shadow.vx
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s shadow.vy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s shadow.vz
execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
