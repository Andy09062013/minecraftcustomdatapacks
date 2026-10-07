execute as @a[tag=gh.fix] run function shadow:gh/fix
execute as @e[type=minecraft:item_display,tag=gh.hook] at @s run function shadow:gh/hook_tick
execute as @a[scores={gh.st=2..}] at @s run function shadow:gh/pull_tick
