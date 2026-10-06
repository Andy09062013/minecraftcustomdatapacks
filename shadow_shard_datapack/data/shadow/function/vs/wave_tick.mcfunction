scoreboard players add @s vs.st 1
execute if score @s vs.st matches 13.. run return run kill @s
tp @s ^ ^ ^1
execute at @s unless block ~ ~ ~ #minecraft:replaceable run tp @s ~ ~1 ~
execute at @s if block ~ ~-1 ~ #minecraft:replaceable run tp @s ~ ~-1 ~
execute at @s run particle minecraft:block{block_state:"minecraft:deepslate"} ~ ~0.2 ~ 0.7 0.1 0.7 0.2 30 force
execute at @s run particle minecraft:dust{color:[0.55,0.2,1.0],scale:2.0} ~ ~0.5 ~ 0.6 0.4 0.6 0 12 force
execute at @s run particle minecraft:explosion ~ ~0.3 ~ 0 0 0 0 1 force
execute at @s run playsound minecraft:block.deepslate.break player @a ~ ~ ~ 1 0.6
scoreboard players operation #me vs = @s shadow.id
tag @a remove vs.me
execute as @a if score @s shadow.id = #me vs run tag @s add vs.me
execute store result score @a[tag=vs.me] vs.sw run time query gametime
execute at @s as @e[type=!#shadow:not_living,tag=!vs.me,distance=..2] unless score @s vs.wcd matches 1.. run tag @s add vs.hit
execute as @e[tag=vs.hit] run damage @s 6 minecraft:player_attack by @a[tag=vs.me,limit=1]
execute as @e[tag=vs.hit] at @s run function shadow:vs/stun {t:40}
scoreboard players set @e[tag=vs.hit] vs.wcd 20
tag @e[tag=vs.hit] remove vs.hit
tag @a remove vs.me
