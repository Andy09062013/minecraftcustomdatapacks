execute if entity @a[tag=shadow.lbower,scores={ebow.u=..4}] run return run kill @s
execute if entity @a[tag=shadow.lbower,predicate=!shadow:is_day] run return run function shadow:ebow/light_night
data modify entity @s pickup set value 0b
function shadow:snipe_arm
scoreboard players set @s shadow.life 40
data modify entity @s PierceLevel set value 4b
tag @s add shadow.lbow
summon minecraft:block_display ~ ~ ~ {Tags:["shadow.lbowvis","shadow.newvis"],block_state:{Name:"minecraft:air"}}
scoreboard players operation @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] shadow.id = @a[tag=shadow.lbower,limit=1] shadow.id
ride @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] mount @s
tag @e[tag=shadow.newvis] remove shadow.newvis
playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1.5 1.6
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 1.8
particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.2 25 force
