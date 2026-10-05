scoreboard players add @s shadow.lt 1
scoreboard players operation #mid shadow.ev = @s shadow.lmid
tag @e[tag=shadow.mymail] remove shadow.mymail
execute as @e[type=minecraft:item_display,tag=shadow.mailitem] if score @s shadow.lmid = #mid shadow.ev run tag @s add shadow.mymail
execute unless entity @e[tag=shadow.mymail] unless score @s shadow.lph matches 5 run return run tp @s ~ -500 ~
tag @a remove shadow.lsend
tag @a remove shadow.lrecv
scoreboard players operation #f shadow.ev = @s shadow.lfrom
scoreboard players operation #t shadow.ev = @s shadow.lto
execute as @a if score @s shadow.id = #f shadow.ev run tag @s add shadow.lsend
execute as @a if score @s shadow.id = #t shadow.ev run tag @s add shadow.lrecv
execute if score @s shadow.lt matches 600.. if score @s shadow.lph matches ..4 run return run function shadow:mail_force
execute if score @s shadow.lph matches 1 run function shadow:mail_p1
execute if score @s shadow.lph matches 2 run function shadow:mail_p2
execute if score @s shadow.lph matches 4 run function shadow:mail_p4
execute if score @s shadow.lph matches 5 run function shadow:mail_p5
execute if score @s shadow.lph matches 2..4 at @s run tp @e[tag=shadow.mymail] ~ ~-0.3 ~
scoreboard players operation #spin shadow.ev = @s shadow.lt
scoreboard players operation #spin shadow.ev %= #4 shadow.ev
execute if score #spin shadow.ev matches 0 at @s run playsound minecraft:entity.phantom.flap neutral @a ~ ~ ~ 0.4 1.8
execute at @s run particle minecraft:white_ash ~ ~ ~ 0.2 0.2 0.2 0 2
