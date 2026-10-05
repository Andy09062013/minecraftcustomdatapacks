summon minecraft:item_display ~ ~ ~ {Tags:["evo.tmp"]}
item replace entity @e[type=minecraft:item_display,tag=evo.tmp,limit=1] contents from entity @s weapon.mainhand
execute store result score #tier evo.v run data get entity @e[type=minecraft:item_display,tag=evo.tmp,limit=1] item.components."minecraft:custom_data".evo_tier
execute store result score #p evo.v run data get entity @e[type=minecraft:item_display,tag=evo.tmp,limit=1] item.components."minecraft:custom_data".evo_p
execute store result score #r evo.v run data get entity @e[type=minecraft:item_display,tag=evo.tmp,limit=1] item.components."minecraft:custom_data".evo_r
execute store result score #end evo.v run data get entity @e[type=minecraft:item_display,tag=evo.tmp,limit=1] item.components."minecraft:custom_data".evo_end
kill @e[type=minecraft:item_display,tag=evo.tmp]
item modify entity @s weapon.mainhand shadow:evo_lock
execute if score #tier evo.v matches 4 if items entity @s weapon.mainhand minecraft:netherite_sword run function shadow:evo_fix4
execute if score #tier evo.v matches 6 run return run function shadow:evo_rage_tick
scoreboard players operation #d evo.v = @s evo.dd
execute if entity @s[tag=evo.pvp] if score #tier evo.v matches ..4 run scoreboard players operation #d evo.v *= #2 evo.v
execute if score #tier evo.v matches 5 unless entity @s[tag=evo.pvp] run scoreboard players set #d evo.v 0
execute if score #d evo.v matches ..0 run return 0
execute if score #tier evo.v matches ..4 run scoreboard players operation #p evo.v += #d evo.v
execute if score #tier evo.v matches 5 run scoreboard players operation #r evo.v += #d evo.v
execute if score #tier evo.v matches 1 run scoreboard players set #req evo.v 400
execute if score #tier evo.v matches 2 run scoreboard players set #req evo.v 900
execute if score #tier evo.v matches 3 run scoreboard players set #req evo.v 1600
execute if score #tier evo.v matches 4 run scoreboard players set #req evo.v 3000
execute if score #tier evo.v matches 5 run scoreboard players set #req evo.v 800
scoreboard players operation #cur evo.v = #p evo.v
execute if score #tier evo.v matches 5 run scoreboard players operation #cur evo.v = #r evo.v
execute if score #cur evo.v >= #req evo.v run return run function shadow:evo_upgrade
function shadow:evo_write
