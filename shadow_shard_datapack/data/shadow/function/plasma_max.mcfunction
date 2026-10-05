data modify entity @s PierceLevel set value 10b
data modify entity @s pickup set value 0b
tag @s add shadow.plasma_max
summon minecraft:block_display ~ ~ ~ {Tags:["shadow.plasmavis","shadow.newvis"],block_state:{Name:"minecraft:air"}}
scoreboard players operation @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] shadow.id = @a[tag=shadow.plasmer,limit=1] shadow.id
ride @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] mount @s
tag @e[tag=shadow.newvis] remove shadow.newvis
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 0 3 force
particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.4 40 force
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 3 1.3
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 2 1.6
