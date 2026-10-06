advancement revoke @s only shadow:ebow_using
scoreboard players add @s ebow.u 1
scoreboard players set @s ebow.f 1
execute if score @s ebow.u matches ..4 run return 0
execute if items entity @s weapon.mainhand *[custom_data~{ebow_void:1b}] at @s run return run function shadow:ebow/charge_void
execute unless items entity @s weapon.mainhand *[custom_data~{ebow_light:1b}] run return 0
execute at @s anchored eyes positioned ^-0.2 ^-0.25 ^0.8 run function shadow:ebow/beams
