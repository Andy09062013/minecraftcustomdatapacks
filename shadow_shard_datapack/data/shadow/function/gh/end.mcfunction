scoreboard players set @s gh.st 0
scoreboard players operation #me gh = @s shadow.id
execute as @e[type=minecraft:item_display,tag=gh.hook] if score @s shadow.id = #me gh run kill @s
execute as @e[tag=gh.tgt] if score @s gh.of = #me gh run tag @s remove gh.tgt
tag @e remove gh.cur
