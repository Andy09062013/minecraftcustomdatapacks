damage @s 1 minecraft:player_attack by @a[tag=gh.me,limit=1]
tag @s add gh.tgt
scoreboard players operation @s gh.of = #me gh
playsound minecraft:entity.fishing_bobber.retrieve player @a ~ ~ ~ 1.2 0.6
particle minecraft:crit ~ ~1 ~ 0.3 0.4 0.3 0.2 12
