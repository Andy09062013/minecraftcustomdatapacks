execute if items entity @s weapon.mainhand *[custom_data~{vs:{l:1}}] run attribute @s minecraft:attack_damage modifier add shadow:vs_night 1 add_value
execute if items entity @s weapon.mainhand *[custom_data~{vs:{l:2}}] run attribute @s minecraft:attack_damage modifier add shadow:vs_night 1.5 add_value
execute if items entity @s weapon.mainhand *[custom_data~{vs:{l:3}}] run attribute @s minecraft:attack_damage modifier add shadow:vs_night 2 add_value
execute if items entity @s weapon.mainhand *[custom_data~{vs:{l:4}}] run attribute @s minecraft:attack_damage modifier add shadow:vs_night 2.5 add_value
tag @s add vs.nt
particle minecraft:dust{color:[0.45,0.1,0.8],scale:0.8} ~ ~1 ~ 0.3 0.5 0.3 0 1
