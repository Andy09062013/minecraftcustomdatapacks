execute if score @s shadow.fcool matches 1.. run scoreboard players remove @s shadow.fcool 1
execute if score @s shadow.fcool matches ..0 if score @s shadow.fuel matches ..199 run scoreboard players add @s shadow.fuel 1
execute if items entity @s weapon.mainhand *[custom_data~{shadow_flame:1b}] if score @s shadow.fuel matches ..199 run function shadow:flame_meter
