tag @s add cb.in
scoreboard players operation @s cb.by = #o cb
scoreboard players set @s cb.j 0
scoreboard players set @s cb.t 160
function shadow:stun_core
scoreboard players set @s shadow.stun 160
effect give @s minecraft:resistance 9 4 true
effect give @s minecraft:invisibility 9 0 true
execute at @s run summon minecraft:item_display ~ ~0.9 ~ {Tags:["cb.trapball","cb.new"],billboard:"vertical",item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_model":"shadow:custom","minecraft:custom_model_data":{strings:["capture_ball_full"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.2f,2.2f,2.2f]},teleport_duration:1,interpolation_duration:2}
scoreboard players operation @e[type=minecraft:item_display,tag=cb.new] shadow.id = @s shadow.id
tag @e[tag=cb.new] remove cb.new
execute at @s run playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 0.6
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.4
execute at @s run particle minecraft:dust{color:[1.0,0.2,0.2],scale:1.5} ~ ~1 ~ 0.4 0.6 0.4 0 40 force
title @a[tag=cb.me] actionbar [{"text":"Caught ","color":"gold"},{"selector":"@s","color":"white"},{"text":"! They can mash jump to break out","color":"gold"}]
title @s title {"text":"CAUGHT!","color":"red","bold":true}
title @s subtitle {"text":"Mash SPACE to break out","color":"yellow"}
function shadow:cb/back
