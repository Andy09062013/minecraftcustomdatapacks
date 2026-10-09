# shooter gets Regeneration while the target has 3+ leeches, stronger with more
execute if score #n lc matches 3..5 run effect give @a[tag=lc.me] minecraft:regeneration 2 1 true
execute if score #n lc matches 6..8 run effect give @a[tag=lc.me] minecraft:regeneration 2 2 true
execute if score #n lc matches 9.. run effect give @a[tag=lc.me] minecraft:regeneration 2 3 true
execute as @a[tag=lc.me] at @s run particle minecraft:heart ~ ~2 ~ 0.3 0.2 0.3 0 1
