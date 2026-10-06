advancement revoke @s only shadow:mb_use
execute if score @s mb.use matches 1.. run return run scoreboard players set @s mb.use 3
scoreboard players set @s mb.use 3
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_mailbox:1b}] run return 0
scoreboard players set #r mb 0
execute anchored eyes positioned ^ ^ ^ run function shadow:mb/ray
execute if score #r mb matches 0 run tellraw @s {"text":"📫 Look at the ground where you want the mailbox","color":"red"}
