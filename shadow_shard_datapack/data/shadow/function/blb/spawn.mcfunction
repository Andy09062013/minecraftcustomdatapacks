$summon minecraft:item_display ~ ~ ~ {Tags:["blb.p","blb.new"],teleport_duration:1,item:{id:"$(item)",count:1},transformation:{left_rotation:[0.2f,0.3f,0.1f,0.92f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
$tp @e[type=minecraft:item_display,tag=blb.new,limit=1] ~ ~ ~ ~$(yaw) ~$(pit)
scoreboard players operation @e[type=minecraft:item_display,tag=blb.new] blb.b = #dm blb
scoreboard players operation @e[type=minecraft:item_display,tag=blb.new] blb.o = #own blb
scoreboard players set @e[type=minecraft:item_display,tag=blb.new] blb.s 0
tag @e[type=minecraft:item_display,tag=blb.new] remove blb.new
