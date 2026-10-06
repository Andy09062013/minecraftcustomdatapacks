execute if items entity @s weapon.mainhand *[custom_data~{ebow_light:1b}] run return run function shadow:ebow/hold_light
clear @s *[custom_data~{ebow_light_ammo:1b}]
execute unless items entity @s container.* *[custom_data~{ebow_void_ammo:1b}] unless items entity @s weapon.offhand *[custom_data~{ebow_void_ammo:1b}] run loot give @s loot shadow:ebow/void_arrow
