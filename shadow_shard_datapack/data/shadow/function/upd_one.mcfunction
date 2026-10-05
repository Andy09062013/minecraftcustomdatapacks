$execute unless items entity @s $(s) *[custom_model_data,!custom_data~{shadow_v2:1b}] run return 0
$execute if items entity @s $(s) minecraft:iron_helmet run return run item modify entity @s $(s) shadow:fix/berserker_helmet
$execute if items entity @s $(s) minecraft:iron_chestplate run return run item modify entity @s $(s) shadow:fix/berserker_chestplate
$execute if items entity @s $(s) minecraft:iron_leggings run return run item modify entity @s $(s) shadow:fix/berserker_leggings
$execute if items entity @s $(s) minecraft:iron_boots run return run item modify entity @s $(s) shadow:fix/berserker_boots
$execute if items entity @s $(s) *[custom_data~{shadow_heavy:1b}] run return run item modify entity @s $(s) shadow:fix/heavy
$item modify entity @s $(s) shadow:fix/custom
