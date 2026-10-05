loot give @s loot shadow:give/void_shard
scoreboard players remove #vc ecl.tmp 1
execute if score #vc ecl.tmp matches 1.. run function shadow:void_give_loop
