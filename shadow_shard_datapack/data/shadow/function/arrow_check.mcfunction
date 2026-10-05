tag @s add shadow.seen
execute if data entity @s item.components."minecraft:custom_data".shadow_tnt_ammo run data modify entity @s pickup set value 0b
execute on origin if items entity @s weapon.mainhand minecraft:crossbow unless items entity @s weapon.mainhand *[custom_data~{shadow_sniper:1b}] unless items entity @s weapon.mainhand *[custom_data~{shadow_heavy:1b}] if items entity @s weapon.offhand minecraft:tnt run tag @s add shadow.tntshooter
execute if entity @a[tag=shadow.tntshooter] run function shadow:tnt_arm
tag @a[tag=shadow.tntshooter] remove shadow.tntshooter
execute unless entity @s[tag=shadow.tntarrow] if data entity @s item.components."minecraft:custom_data".shadow_blood_arrow run function shadow:blood_arm
execute unless entity @s[tag=shadow.tntarrow] on origin if items entity @s weapon.mainhand *[custom_data~{shadow_sniper:1b}] run tag @s add shadow.sniperer
execute if entity @a[tag=shadow.sniperer] run function shadow:snipe_arm
tag @a[tag=shadow.sniperer] remove shadow.sniperer
execute if data entity @s item.components."minecraft:custom_data".shadow_caliber run function shadow:caliber_arm
execute unless entity @s[tag=shadow.tntarrow] on origin if items entity @s weapon.mainhand *[custom_data~{shadow_hungry:1b}] run tag @s add shadow.hungrier
execute if entity @a[tag=shadow.hungrier] run function shadow:hungry_arm
tag @a[tag=shadow.hungrier] remove shadow.hungrier
execute unless entity @s[tag=shadow.tntarrow] on origin if items entity @s weapon.* *[custom_data~{shadow_plasma:1b}] run tag @s add shadow.plasmer
execute if entity @a[tag=shadow.plasmer] run function shadow:plasma_arm
tag @a[tag=shadow.plasmer] remove shadow.plasmer
execute unless entity @s[tag=shadow.tntarrow] on origin if items entity @s weapon.mainhand *[custom_data~{shadow_heavy:1b}] run tag @s add shadow.heavyer
execute if entity @a[tag=shadow.heavyer] run function shadow:heavy_arm
tag @a[tag=shadow.heavyer] remove shadow.heavyer
