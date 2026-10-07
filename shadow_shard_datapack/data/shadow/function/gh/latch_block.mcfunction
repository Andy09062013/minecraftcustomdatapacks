tag @s add gh.done
tag @s add gh.stuck
execute at @s run tp @s ^ ^ ^-0.6
scoreboard players set @a[tag=gh.me] gh.st 2
scoreboard players set @a[tag=gh.me] gh.pt 0
execute at @s run playsound minecraft:block.chain.place player @a ~ ~ ~ 1.2 0.8
execute at @s run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.2 10
