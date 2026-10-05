execute if predicate shadow:sneaking unless entity @s[tag=shadow.wassneak] if items entity @s weapon.mainhand *[custom_data~{shadow_satchel:1b}] run function shadow:sat_toggle_user
execute if predicate shadow:sneaking run tag @s add shadow.wassneak
execute unless predicate shadow:sneaking run tag @s remove shadow.wassneak
function shadow:sat_slots
scoreboard players operation #me shadow.ev = @s shadow.id
tag @e[tag=shadow.mybag] remove shadow.mybag
execute as @e[type=minecraft:item_display,tag=shadow.satbag] if score @s shadow.id = #me shadow.ev run tag @s add shadow.mybag
execute unless entity @e[tag=shadow.mybag] run function shadow:sat_make_bag
execute if predicate shadow:sneaking run tp @e[tag=shadow.mybag] ~ ~-0.18 ~ ~ 0
execute unless predicate shadow:sneaking run tp @e[tag=shadow.mybag] ~ ~ ~ ~ 0
scoreboard players set #hide shadow.ev 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run scoreboard players set #hide shadow.ev 1
execute if predicate shadow:swimming run scoreboard players set #hide shadow.ev 1
execute if predicate shadow:gliding run scoreboard players set #hide shadow.ev 1
execute if entity @s[gamemode=spectator] run scoreboard players set #hide shadow.ev 1
execute if score #hide shadow.ev matches 1 as @e[tag=shadow.mybag] run data modify entity @s view_range set value 0f
execute if score #hide shadow.ev matches 0 as @e[tag=shadow.mybag] run data modify entity @s view_range set value 1f
tag @e[tag=shadow.mybag] add shadow.bagseen
tag @e[tag=shadow.mybag] remove shadow.mybag
