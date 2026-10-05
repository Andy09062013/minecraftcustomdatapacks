summon minecraft:item_display ~ ~ ~ {Tags:["cs.e","cs.sword","cs.new"],teleport_duration:1,view_range:8f,brightness:{sky:15,block:15},item_display:"fixed",transformation:{left_rotation:[0f,0f,-0.9239f,0.3827f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[11f,11f,11f]}}
loot replace entity @e[type=minecraft:item_display,tag=cs.new,limit=1] contents loot shadow:evo/rage
tp @e[type=minecraft:item_display,tag=cs.new,limit=1] ~ ~ ~ ~ 0
tag @e[tag=cs.new] remove cs.new
playsound minecraft:item.trident.thunder master @a[tag=cs.in] ~ ~-60 ~ 4 0.5
