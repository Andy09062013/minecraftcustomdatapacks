execute if predicate shadow:sneaking unless entity @s[tag=shadow.wassneak] if items entity @s weapon.mainhand *[custom_data~{shadow_satchel:1b}] run function shadow:sat_toggle_user
execute if predicate shadow:sneaking run tag @s add shadow.wassneak
execute unless predicate shadow:sneaking run tag @s remove shadow.wassneak
