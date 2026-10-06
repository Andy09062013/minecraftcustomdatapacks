scoreboard players add @s vs.cd 0
scoreboard players add @s vs.acd 0
function shadow:vs/read
execute store result score @s vs.c run clear @s *[custom_data~{shadow_vcrystal:1b}] 0
scoreboard players operation #a vs = @s vs.cd
scoreboard players add #a vs 19
scoreboard players operation #a vs /= #20 vs
scoreboard players operation #b vs = @s vs.acd
scoreboard players add #b vs 19
scoreboard players operation #b vs /= #20 vs
scoreboard players set #h vs 0
execute if score @s vs.p matches 2 run scoreboard players set #h vs 1
execute if score @s vs.p matches 1 if score @s vs.l matches 4 run scoreboard players set #h vs 1
execute if score #h vs matches 0 if score #a vs matches 0 run title @s actionbar [{"text":"◆ ","color":"#9b4dff"},{"score":{"name":"@s","objective":"vs.c"},"color":"light_purple"},{"text":"   Swing ","color":"gray"},{"text":"ready","color":"green"}]
execute if score #h vs matches 1 if score #a vs matches 0 if score #b vs matches 0 run title @s actionbar [{"text":"◆ ","color":"#9b4dff"},{"score":{"name":"@s","objective":"vs.c"},"color":"light_purple"},{"text":"   Swing ","color":"gray"},{"text":"ready","color":"green"},{"text":"   Jump ability ","color":"gray"},{"text":"ready","color":"green"}]
execute if score #h vs matches 1 if score #a vs matches 0 if score #b vs matches 1.. run title @s actionbar [{"text":"◆ ","color":"#9b4dff"},{"score":{"name":"@s","objective":"vs.c"},"color":"light_purple"},{"text":"   Swing ","color":"gray"},{"text":"ready","color":"green"},{"text":"   Jump ability ","color":"gray"},{"score":{"name":"#b","objective":"vs"},"color":"red"},{"text":"s","color":"red"}]
execute if score #h vs matches 0 if score #a vs matches 1.. run title @s actionbar [{"text":"◆ ","color":"#9b4dff"},{"score":{"name":"@s","objective":"vs.c"},"color":"light_purple"},{"text":"   Swing ","color":"gray"},{"score":{"name":"#a","objective":"vs"},"color":"red"},{"text":"s","color":"red"}]
execute if score #h vs matches 1 if score #a vs matches 1.. if score #b vs matches 0 run title @s actionbar [{"text":"◆ ","color":"#9b4dff"},{"score":{"name":"@s","objective":"vs.c"},"color":"light_purple"},{"text":"   Swing ","color":"gray"},{"score":{"name":"#a","objective":"vs"},"color":"red"},{"text":"s","color":"red"},{"text":"   Jump ability ","color":"gray"},{"text":"ready","color":"green"}]
execute if score #h vs matches 1 if score #a vs matches 1.. if score #b vs matches 1.. run title @s actionbar [{"text":"◆ ","color":"#9b4dff"},{"score":{"name":"@s","objective":"vs.c"},"color":"light_purple"},{"text":"   Swing ","color":"gray"},{"score":{"name":"#a","objective":"vs"},"color":"red"},{"text":"s","color":"red"},{"text":"   Jump ability ","color":"gray"},{"score":{"name":"#b","objective":"vs"},"color":"red"},{"text":"s","color":"red"}]
