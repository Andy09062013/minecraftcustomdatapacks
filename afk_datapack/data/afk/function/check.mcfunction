scoreboard players set #in afk.t 0
execute if predicate afk:input run scoreboard players set #in afk.t 1
execute if score @s afk.hurt matches 1.. run scoreboard players set #in afk.t 1
scoreboard players set @s afk.hurt 0
execute store result score @s afk.y2 run data get entity @s Rotation[0] 10
execute store result score @s afk.p2 run data get entity @s Rotation[1] 10
execute unless score @s afk.y2 = @s afk.yaw run scoreboard players set #in afk.t 1
execute unless score @s afk.p2 = @s afk.pit run scoreboard players set #in afk.t 1
scoreboard players operation @s afk.yaw = @s afk.y2
scoreboard players operation @s afk.pit = @s afk.p2
execute if entity @s[tag=afk.on] run return run function afk:while_afk
execute if score #in afk.t matches 1 run return run scoreboard players set @s afk.t 0
execute if entity @s[gamemode=spectator] run return run scoreboard players set @s afk.t 0
execute if entity @s[tag=cs.in] run return run scoreboard players set @s afk.t 0
execute if entity @s[tag=orb.in] run return run scoreboard players set @s afk.t 0
scoreboard players add @s afk.t 1
execute if score @s afk.t >= #limit afk.t run function afk:enter
