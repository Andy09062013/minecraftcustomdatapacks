execute store result storage shadow:gh q.d int 1 run scoreboard players get @s gh.dmg
execute if items entity @s weapon.mainhand *[custom_data~{shadow_grapple_rem:1b}] run return run function shadow:gh/put {s:"weapon.mainhand"}
execute if items entity @s weapon.offhand *[custom_data~{shadow_grapple_rem:1b}] run return run function shadow:gh/put {s:"weapon.offhand"}
clear @s *[custom_data~{shadow_grapple_rem:1b}] 1
loot give @s loot shadow:give/grappling_hook
