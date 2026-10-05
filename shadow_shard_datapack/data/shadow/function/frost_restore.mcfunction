tag @s remove shadow.frost_restore
execute if items entity @s weapon.mainhand *[custom_data~{shadow_frost_rem:1b}] run return run loot replace entity @s weapon.mainhand loot shadow:give/frost_staff
execute if items entity @s weapon.offhand *[custom_data~{shadow_frost_rem:1b}] run return run loot replace entity @s weapon.offhand loot shadow:give/frost_staff
execute if items entity @s container.* *[custom_data~{shadow_frost_rem:1b}] run function shadow:frost_restore_inv
