scoreboard players remove @s batt.z 1
particle minecraft:electric_spark ~ ~1 ~ 0.35 0.6 0.35 0.2 6
scoreboard players operation #m batt = @s batt.z
scoreboard players operation #m batt %= #10 batt
execute if score #m batt matches 0 run damage @s 1 minecraft:lightning_bolt
execute if score #m batt matches 0 run playsound minecraft:block.copper_bulb.turn_off player @a ~ ~ ~ 0.5 1.6
