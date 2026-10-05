scoreboard players reset @s shadow.fstage
scoreboard players reset @s shadow.fdecay
effect give @s minecraft:slowness 5 2
function shadow:stun_core
execute unless entity @s[type=minecraft:player] run data modify entity @s TicksFrozen set value 150
summon minecraft:block_display ~ ~ ~ {Tags:["shadow.icecase"],block_state:{Name:"minecraft:ice"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.65f,0f,-0.65f],scale:[1.3f,2.2f,1.3f]}}
scoreboard players set @e[type=minecraft:block_display,tag=shadow.icecase,distance=..0.1,limit=1,sort=nearest] shadow.flife 40
playsound minecraft:block.glass.place player @a ~ ~ ~ 1 0.6
