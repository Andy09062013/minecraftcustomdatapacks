tag @s remove shadow.blb_restore
execute if items entity @s weapon.mainhand *[custom_data~{shadow_blunder_rem:1b}] run return run loot replace entity @s weapon.mainhand loot shadow:give/blunderbuss
execute if items entity @s weapon.offhand *[custom_data~{shadow_blunder_rem:1b}] run return run loot replace entity @s weapon.offhand loot shadow:give/blunderbuss
execute if items entity @s container.* *[custom_data~{shadow_blunder_rem:1b}] run clear @s *[custom_data~{shadow_blunder_rem:1b}] 1
execute if items entity @s container.* *[custom_data~{shadow_blunder_rem:1b}] run return 0
loot give @s loot shadow:give/blunderbuss
