tag @s remove gh.fix
execute if score @s gh.dmg matches 200.. run return run function shadow:gh/broke
execute unless items entity @s weapon.* *[custom_data~{shadow_grapple_rem:1b}] unless items entity @s container.* *[custom_data~{shadow_grapple_rem:1b}] run return 0
function shadow:gh/restore
