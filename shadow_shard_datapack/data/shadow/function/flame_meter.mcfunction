scoreboard players operation @s shadow.fpct = @s shadow.fuel
scoreboard players operation @s shadow.fpct /= #2 shadow.maxhp
execute if score @s shadow.fuel matches 100.. run title @s actionbar [{"text":"Fuel ","color":"gold"},{"score":{"name":"@s","objective":"shadow.fpct"},"color":"green"},{"text":"%","color":"green"}]
execute if score @s shadow.fuel matches 40..99 run title @s actionbar [{"text":"Fuel ","color":"gold"},{"score":{"name":"@s","objective":"shadow.fpct"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s shadow.fuel matches ..39 run title @s actionbar [{"text":"Fuel ","color":"gold"},{"score":{"name":"@s","objective":"shadow.fpct"},"color":"red"},{"text":"%","color":"red"}]
