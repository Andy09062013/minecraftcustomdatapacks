execute as @e[tag=shadow.holyaura] run attribute @s minecraft:follow_range modifier remove shadow:crucifix
tag @e[tag=shadow.holyaura] remove shadow.holyaura
execute as @a if items entity @s weapon.* *[custom_data~{shadow_crucifix:1b}] at @s as @e[type=!#shadow:not_living,type=!minecraft:player,distance=..40] run tag @s add shadow.holyaura
execute as @e[tag=shadow.holyaura] run attribute @s minecraft:follow_range modifier add shadow:crucifix -0.5 add_multiplied_total
scoreboard players set #t shadow.gfuse 0
