# camera: low side shot of the anvil, slow push in
scoreboard players operation #fx cs.t = #f cs.t
execute store result storage shadow:cs fc.x double 0.01 run scoreboard players remove #fx cs.t 240
scoreboard players operation #fy cs.t = #f cs.t
scoreboard players operation #fy cs.t *= #-1 cs.t
scoreboard players add #fy cs.t 190
execute store result storage shadow:cs fc.y double 0.01 run scoreboard players get #fy cs.t
scoreboard players operation #fz cs.t = #f cs.t
scoreboard players operation #fz cs.t *= #-1 cs.t
scoreboard players add #fz cs.t 290
execute store result storage shadow:cs fc.z double 0.01 run scoreboard players get #fz cs.t
function shadow:cs/fcam with storage shadow:cs fc
execute if score #f cs.t matches 1 run function shadow:cs/forge_open
particle minecraft:lava ~ ~ ~ 8 0.2 8 0 2 force
particle minecraft:ash ~ ~4 ~ 8 4 8 0 15 force
particle minecraft:flame ~ ~1.05 ~1 0.15 0.02 0.15 0.01 1 force
execute if score #f cs.t matches 6 run function shadow:cs/hammer_up
execute if score #f cs.t matches 10 run function shadow:cs/hammer_down
execute if score #f cs.t matches 12 run function shadow:cs/pound
execute if score #f cs.t matches 18 run function shadow:cs/hammer_up
execute if score #f cs.t matches 22 run function shadow:cs/hammer_down
execute if score #f cs.t matches 24 run function shadow:cs/pound
execute if score #f cs.t matches 30 run function shadow:cs/hammer_up
execute if score #f cs.t matches 34 run function shadow:cs/hammer_down
execute if score #f cs.t matches 36 run function shadow:cs/pound
execute if score #f cs.t matches 40 run function shadow:cs/hammer_up
execute if score #f cs.t matches 46 run function shadow:cs/hammer_down
execute if score #f cs.t matches 48 run function shadow:cs/pound_final
execute if score #f cs.t matches 56 run function shadow:cs/forge_take
