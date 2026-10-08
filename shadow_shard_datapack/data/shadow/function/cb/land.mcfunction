scoreboard players operation #o cb = @s shadow.id
tag @a remove cb.me
execute as @a if score @s shadow.id = #o cb run tag @s add cb.me
execute if items entity @s contents *[custom_data~{cb_full:1b}] run return run function shadow:cb/release
tag @e remove cb.tgt
execute as @e[type=!#shadow:not_living,type=!minecraft:player,type=!minecraft:ender_dragon,type=!minecraft:wither,distance=..2.2,sort=nearest,limit=1] run tag @s add cb.tgt
execute unless entity @e[tag=cb.tgt] run return run function shadow:cb/back
execute as @e[tag=cb.tgt,limit=1] run function shadow:cb/capture
tag @e remove cb.tgt
