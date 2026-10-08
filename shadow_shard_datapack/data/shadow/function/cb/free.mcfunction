tag @s remove cb.in
scoreboard players set @s cb.imm 100
function shadow:stun_end
effect clear @s minecraft:resistance
effect clear @s minecraft:invisibility
execute as @e[type=minecraft:item_display,tag=cb.trapball] if score @s shadow.id = #me cb run kill @s
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 1.6
particle minecraft:dust{color:[1.0,0.8,0.3],scale:1.5} ~ ~1 ~ 0.5 0.6 0.5 0 40 force
particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1
title @s actionbar {"text":"You broke out!","color":"green","bold":true}
