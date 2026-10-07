scoreboard players operation #o bf = @s shadow.id
scoreboard players set #n bf 0
execute as @a if score @s bf.sel = #o bf run scoreboard players add #n bf 1
execute unless score @s bf.cd matches 1.. run title @s actionbar [{"text":"⚑ Allies picked: ","color":"gold"},{"score":{"name":"#n","objective":"bf"},"color":"white"},{"text":"   Warhorn ready","color":"green"}]
execute if score @s bf.cd matches 1.. run function shadow:bf/cd_msg
