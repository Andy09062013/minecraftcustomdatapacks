advancement revoke @s only shadow:gh_using
scoreboard players set @s gh.dmg 0
execute if items entity @s weapon.mainhand *[custom_data~{shadow_grapple:1b}] run return run function shadow:gh/wear_main
execute store result score @s gh.dmg run data get entity @s equipment.offhand.components."minecraft:damage"
scoreboard players set @s gh.hand 2
