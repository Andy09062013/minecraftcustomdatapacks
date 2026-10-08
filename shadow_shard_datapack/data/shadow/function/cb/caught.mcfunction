scoreboard players operation #by cb = @s cb.by
tag @a remove cb.me
execute as @a if score @s shadow.id = #by cb run tag @s add cb.me
execute unless entity @a[tag=cb.me] run return run function shadow:cb/free
execute as @e[type=minecraft:item_display,tag=cb.trapball] if score @s shadow.id = #me cb run kill @s
tag @s remove cb.in
tag @s add cb.held
scoreboard players set @s cb.j 0
scoreboard players set @s cb.t 1200
data modify storage shadow:mbox q set value {name:"Player"}
execute store result storage shadow:mbox q.id int 1 run scoreboard players get @s shadow.id
function shadow:mb/getname with storage shadow:mbox q
function shadow:cb/pball with storage shadow:mbox q
title @s title {"text":"CAPTURED","color":"dark_red","bold":true}
title @s subtitle {"text":"Keep mashing SPACE to escape","color":"yellow"}
playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 0.6
