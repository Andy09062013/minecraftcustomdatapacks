summon minecraft:block_display ~ ~ ~ {Tags:["lc.vis","lc.new"],block_state:{Name:"minecraft:air"}}
scoreboard players operation @e[type=minecraft:block_display,tag=lc.new,limit=1] shadow.id = @a[tag=lc.shooter,limit=1] shadow.id
ride @e[type=minecraft:block_display,tag=lc.new,limit=1] mount @s
tag @e[tag=lc.new] remove lc.new
data modify entity @s damage set value 0.01d
tag @s add lc.arrow
