tag @s add cb.seen
summon minecraft:item_display ~ ~ ~ {Tags:["cb.vis","cb.new"],item_display:"ground",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
item replace entity @e[type=minecraft:item_display,tag=cb.new,limit=1] contents from entity @s contents
execute on origin run scoreboard players operation #o cb = @s shadow.id
scoreboard players operation @e[type=minecraft:item_display,tag=cb.new] shadow.id = #o cb
ride @e[type=minecraft:item_display,tag=cb.new,limit=1] mount @s
tag @e[tag=cb.new] remove cb.new
