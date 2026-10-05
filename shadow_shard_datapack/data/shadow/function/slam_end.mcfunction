execute as @e[tag=shadow.mytarget] run scoreboard players set @s shadow.stun 1
tag @e[tag=shadow.mytarget] remove shadow.slam_target
scoreboard players reset @e[tag=shadow.mytarget] shadow.slamby
tag @e[tag=shadow.mytarget] remove shadow.mytarget
effect clear @s minecraft:levitation
effect clear @s minecraft:resistance
scoreboard players set @s shadow.slam 0
scoreboard players set @s shadow.slamt 0
scoreboard players set @s shadow.fly 5
