scoreboard players add #prep cs.t 1
execute if score #prep cs.t matches 400.. run return run function shadow:cs/end
execute in minecraft:the_nether unless loaded 999990 200 999990 run return 0
execute in minecraft:the_nether unless loaded 1000042 200 1000042 run return 0
execute in minecraft:the_nether unless loaded 999990 200 1000042 run return 0
execute in minecraft:the_nether unless loaded 1000042 200 999990 run return 0
scoreboard players set #prep cs.t 0
execute unless entity @a[tag=cs.hero] run tag @r add cs.hero
execute as @a[tag=cs.hero,limit=1] in minecraft:the_nether positioned 1000016.5 201 1000016.5 rotated 0 0 run function shadow:cs/setup
