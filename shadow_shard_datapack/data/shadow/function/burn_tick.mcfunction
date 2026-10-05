scoreboard players remove @s shadow.burn 1
particle minecraft:flame ~ ~1 ~ 0.25 0.5 0.25 0.01 2
scoreboard players operation #m shadow.pc = @s shadow.burn
scoreboard players operation #m shadow.pc %= #20 shadow.pc
execute if score #m shadow.pc matches 0 unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run damage @s 1 minecraft:on_fire
execute if block ~ ~ ~ minecraft:water run scoreboard players set @s shadow.burn 0
