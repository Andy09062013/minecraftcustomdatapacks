data remove entity @s interaction
scoreboard players operation #me mb = @s shadow.id
execute as @a[tag=mb.clicker,limit=1] unless score @s shadow.id = #me mb run return run function shadow:mb/not_yours
execute as @a[tag=mb.clicker,limit=1] at @s run function shadow:mb/open
execute as @e[type=minecraft:marker,tag=mb.base,distance=..1,limit=1] at @s run function shadow:mb/check
