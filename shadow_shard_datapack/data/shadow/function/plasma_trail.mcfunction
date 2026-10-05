particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 3 force
particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.1 6 force
particle minecraft:dust{color:[0.3,0.9,1.0],scale:2.0} ~ ~ ~ 0.15 0.15 0.15 0 4 force
execute if predicate shadow:chance30 run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if predicate shadow:chance30 run playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.6 1.8
