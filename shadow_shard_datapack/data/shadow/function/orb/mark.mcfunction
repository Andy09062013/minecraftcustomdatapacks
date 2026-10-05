execute align xyz positioned ~0.5 ~1 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["orb.e","orb.tgt"]}
execute align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["orb.e"],block_state:{Name:"minecraft:white_stained_glass"},Glowing:1b,glow_color_override:12245503,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.02f,-0.02f,-0.02f],scale:[1.04f,1.04f,1.04f]}}
scoreboard players set #orun orb 1
scoreboard players set #oprep orb 1
scoreboard players set #ot orb 0
tag @a remove orb.caster
tag @s add orb.caster
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s run forceload add ~-48 ~-48 ~48 ~48
execute in minecraft:the_end run forceload add 1999984 1999984 2000048 2000048
title @s actionbar {"text":"🛰 Uplink established. Target locked...","color":"#bfe9ff"}
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 3 1.6
