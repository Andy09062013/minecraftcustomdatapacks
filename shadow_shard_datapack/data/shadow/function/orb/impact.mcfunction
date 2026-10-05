title @a[distance=..200] times 0 4 20
title @a[distance=..200] subtitle ""
title @a[distance=..200] title {"text":"","font":"shadow:flash","color":"white"}
execute as @e[type=!#shadow:not_living,distance=..16] run damage @s 400 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=16..32] run damage @s 80 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=32..48] run damage @s 30 minecraft:explosion
playsound minecraft:entity.generic.explode master @a[distance=..320] ~ ~ ~ 20 0.4
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..320] ~ ~ ~ 20 0.5
playsound minecraft:entity.warden.sonic_boom master @a[distance=..320] ~ ~ ~ 20 0.7
playsound minecraft:item.totem.use master @a[distance=..320] ~ ~ ~ 20 0.5
particle minecraft:explosion_emitter ~ ~1 ~ 6 2 6 0 25 force
particle minecraft:end_rod ~ ~2 ~ 1 1 1 2.5 800 force
