clear @s *[custom_data~{ebow_void_ammo:1b}]
execute unless items entity @s container.* *[custom_data~{ebow_light_ammo:1b}] unless items entity @s weapon.offhand *[custom_data~{ebow_light_ammo:1b}] run loot give @s loot shadow:ebow/light_arrow
execute unless predicate shadow:is_day run title @s actionbar {"text":"☀ Light Form only works during the day. Tap right click for Void Form","color":"#c9b260"}
