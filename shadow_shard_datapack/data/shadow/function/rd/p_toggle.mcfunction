execute if score @s rp.on matches 1 run return run function shadow:rd/p_off
scoreboard players set @s rp.on 1
scoreboard players set @s rp.t 0
playsound minecraft:block.lever.click player @s ~ ~ ~ 1 1.4
