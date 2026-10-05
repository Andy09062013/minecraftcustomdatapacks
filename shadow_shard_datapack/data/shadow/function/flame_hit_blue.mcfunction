damage @s 4 minecraft:lava by @a[tag=shadow.flamer,limit=1]
execute unless entity @s[type=minecraft:player] run data modify entity @s Fire set value 300s
execute if entity @s[type=minecraft:player] run scoreboard players set @s shadow.burn 300
