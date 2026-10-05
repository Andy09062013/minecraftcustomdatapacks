execute store result storage shadow:evo p int 1 run scoreboard players get #p evo.v
execute store result storage shadow:evo r int 1 run scoreboard players get #r evo.v
scoreboard players operation #f evo.v = #cur evo.v
scoreboard players operation #f evo.v *= #1000 evo.v
scoreboard players operation #f evo.v /= #req evo.v
execute if score #f evo.v matches ..9 run scoreboard players set #f evo.v 10
execute store result storage shadow:evo frac float 0.001 run scoreboard players get #f evo.v
item modify entity @s weapon.mainhand shadow:evo_write
scoreboard players operation #pct evo.v = #f evo.v
scoreboard players operation #pct evo.v /= #10 evo.v
execute if score #tier evo.v matches 1 run title @s actionbar [{"text":"Wooden Blade ","color":"gold"},{"text":"▸ Stone ","color":"gray"},{"score":{"name":"#pct","objective":"evo.v"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score #tier evo.v matches 2 run title @s actionbar [{"text":"Stone Blade ","color":"gray"},{"text":"▸ Iron ","color":"white"},{"score":{"name":"#pct","objective":"evo.v"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score #tier evo.v matches 3 run title @s actionbar [{"text":"Iron Blade ","color":"white"},{"text":"▸ Diamond ","color":"aqua"},{"score":{"name":"#pct","objective":"evo.v"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score #tier evo.v matches 4 run title @s actionbar [{"text":"Diamond Blade ","color":"aqua"},{"text":"▸ Netherite ","color":"dark_purple"},{"score":{"name":"#pct","objective":"evo.v"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score #tier evo.v matches 5 run title @s actionbar [{"text":"RAGE ","color":"red","bold":true},{"score":{"name":"#pct","objective":"evo.v"},"color":"gold","bold":true},{"text":"%","color":"gold","bold":true}]
