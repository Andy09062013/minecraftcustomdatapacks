scoreboard players operation #tmp shadow.id = @s shadow.id
execute unless entity @s[gamemode=creative] run damage @s 1 minecraft:magic
scoreboard players set @s shadow.reload 20
