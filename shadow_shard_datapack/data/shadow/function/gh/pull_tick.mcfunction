scoreboard players add @s gh.pt 1
scoreboard players operation #me gh = @s shadow.id
tag @e remove gh.cur
execute if score @s gh.st matches 2 as @e[type=minecraft:item_display,tag=gh.stuck] if score @s shadow.id = #me gh run tag @s add gh.cur
execute if score @s gh.st matches 3 as @e[tag=gh.tgt] if score @s gh.of = #me gh run tag @s add gh.cur
execute unless entity @e[tag=gh.cur] run return run function shadow:gh/end
execute if score @s gh.pt matches 60.. run return run function shadow:gh/end
execute if score @s gh.st matches 2 if entity @e[tag=gh.cur,distance=..1.6] run return run function shadow:gh/arrive
execute if score @s gh.st matches 3 if entity @e[tag=gh.cur,distance=..2.2] run return run function shadow:gh/end
execute facing entity @e[tag=gh.cur,limit=1] feet run tp @s ^ ^ ^1.4
execute anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ #shadow:axe_pass run effect give @s minecraft:resistance 1 4 true
execute at @s run function shadow:gh/rope_cur
execute at @s run particle minecraft:cloud ~ ~0.5 ~ 0.2 0.2 0.2 0 1
