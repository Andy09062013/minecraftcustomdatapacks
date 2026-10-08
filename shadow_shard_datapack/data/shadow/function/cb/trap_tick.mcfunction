scoreboard players remove @s cb.t 1
execute if score @s cb.jmp matches 1.. run function shadow:cb/mash
scoreboard players set @s cb.jmp 0
scoreboard players operation #me cb = @s shadow.id
execute as @e[type=minecraft:item_display,tag=cb.trapball] if score @s shadow.id = #me cb run tag @s add cb.mine
execute if score @s cb.j matches 15.. run return run function shadow:cb/free
execute if score @s cb.t matches ..0 run return run function shadow:cb/caught
scoreboard players operation #w cb = @s cb.t
scoreboard players operation #w cb %= #6 cb
execute if score #w cb matches 0 run data merge entity @e[tag=cb.mine,limit=1] {start_interpolation:0,transformation:{left_rotation:[0f,0f,0.1045f,0.9945f]}}
execute if score #w cb matches 3 run data merge entity @e[tag=cb.mine,limit=1] {start_interpolation:0,transformation:{left_rotation:[0f,0f,-0.1045f,0.9945f]}}
tag @e remove cb.mine
function shadow:cb/bar
