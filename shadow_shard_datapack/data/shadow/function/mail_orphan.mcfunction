scoreboard players operation #mid shadow.ev = @s shadow.lmid
scoreboard players set #mo shadow.ev 0
execute as @e[type=minecraft:bat,tag=shadow.mailbat] if score @s shadow.lmid = #mid shadow.ev run scoreboard players set #mo shadow.ev 1
execute if score #mo shadow.ev matches 1 run return 0
# its bat is gone, drop the letter on the ground
execute unless data entity @s item.components."minecraft:custom_data".shadow_letter_mail run function shadow:mail_open
summon minecraft:item ~ ~ ~ {Tags:["shadow.mailitemdrop"],Item:{id:"minecraft:paper",count:1}}
data modify entity @e[type=minecraft:item,tag=shadow.mailitemdrop,limit=1] Item set from entity @s item
tag @e[type=minecraft:item,tag=shadow.mailitemdrop] remove shadow.mailitemdrop
particle minecraft:white_ash ~ ~ ~ 0.3 0.3 0.3 0 10
kill @s
