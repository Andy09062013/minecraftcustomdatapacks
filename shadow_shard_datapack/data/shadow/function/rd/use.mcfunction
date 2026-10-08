advancement revoke @s only shadow:rd_use
execute if score @s rd.use matches 1.. run return run scoreboard players set @s rd.use 3
scoreboard players set @s rd.use 3
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_radio:1b}] run return 0
scoreboard players set #r rd 0
execute anchored eyes positioned ^ ^ ^ run function shadow:rd/ray
