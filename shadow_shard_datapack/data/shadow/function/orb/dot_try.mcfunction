scoreboard players operation #p orb = #ot orb
scoreboard players remove #p orb 226
scoreboard players operation #p orb %= #10 orb
execute unless score #p orb matches 0 run return 0
execute as @e[type=!#shadow:not_living,x=~-25,dx=50,y=~-24,dy=64,z=~-25,dz=50] run damage @s 50 minecraft:explosion
particle minecraft:end_rod ~ ~1 ~ 12 1 12 0.3 120 force
particle minecraft:explosion ~ ~1 ~ 12 1 12 0 12 force
playsound minecraft:entity.generic.explode master @a[distance=..160] ~ ~ ~ 8 0.6
