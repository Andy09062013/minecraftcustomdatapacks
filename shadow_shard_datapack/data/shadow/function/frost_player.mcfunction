scoreboard players operation #me shadow.id = @s shadow.id
tag @e[tag=shadow.myorb] remove shadow.myorb
execute as @e[type=minecraft:block_display,tag=shadow.iceorb] if score @s shadow.id = #me shadow.id run tag @s add shadow.myorb
execute as @e[tag=shadow.myorb] run function shadow:frost_orb_move
tag @e[tag=shadow.myclick] remove shadow.myclick
execute as @e[type=minecraft:interaction,tag=shadow.frostclick] if score @s shadow.id = #me shadow.id run tag @s add shadow.myclick
execute if entity @e[tag=shadow.myorb] if items entity @s weapon.mainhand *[custom_data~{shadow_frost:1b}] unless entity @e[tag=shadow.myclick] run function shadow:frost_make_click
execute unless entity @e[tag=shadow.myorb] run kill @e[tag=shadow.myclick]
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_frost:1b}] run kill @e[tag=shadow.myclick]
execute as @e[tag=shadow.myclick] run tp @s ~ ~-0.2 ~
execute as @e[tag=shadow.myclick] if data entity @s attack run tag @s add shadow.clicked
execute as @e[tag=shadow.myclick] if data entity @s interaction run tag @s add shadow.clicked
execute if entity @e[tag=shadow.myclick,tag=shadow.clicked] run function shadow:frost_throw
execute as @e[tag=shadow.myclick] run data remove entity @s attack
execute as @e[tag=shadow.myclick] run data remove entity @s interaction
tag @e[tag=shadow.myclick] remove shadow.clicked
