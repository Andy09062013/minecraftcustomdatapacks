scoreboard players operation #p orb = #ot orb
scoreboard players remove #p orb 228
scoreboard players operation #p orb %= #10 orb
execute unless score #p orb matches 0 run return 0
execute positioned ~-25 ~-24 ~-25 as @e[type=!#shadow:not_living,dx=50,dy=64,dz=50] run damage @s 50 shadow:orbital
particle minecraft:end_rod ~ ~1 ~ 12 1 12 0.3 120 force
particle minecraft:explosion ~ ~1 ~ 12 1 12 0 12 force
playsound minecraft:entity.generic.explode master @a[distance=..160] ~ ~ ~ 8 0.6
