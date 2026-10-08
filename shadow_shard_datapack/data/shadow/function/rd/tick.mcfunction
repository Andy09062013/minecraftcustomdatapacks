scoreboard players remove @a[scores={rd.use=1..}] rd.use 1
execute as @e[type=minecraft:interaction,tag=rd.int] if data entity @s attack at @s run function shadow:rd/hit
execute as @e[type=minecraft:interaction,tag=rd.int] if data entity @s interaction at @s run function shadow:rd/next
execute as @e[type=minecraft:interaction,tag=rd.int,tag=!rd.v2] run function shadow:rd/upgrade
execute as @e[type=minecraft:marker,tag=rd.base,tag=rd.on] at @s run function shadow:rd/block_tick
execute as @a[tag=rp.play] unless items entity @s weapon.mainhand *[custom_data~{shadow_pradio:1b}] unless items entity @s weapon.offhand *[custom_data~{shadow_pradio:1b}] at @s run function shadow:rd/p_stop
execute as @a[scores={rp.on=1}] if items entity @s weapon.mainhand *[custom_data~{shadow_pradio:1b}] at @s run function shadow:rd/p_tick
execute as @a[scores={rp.on=1}] unless items entity @s weapon.mainhand *[custom_data~{shadow_pradio:1b}] if items entity @s weapon.offhand *[custom_data~{shadow_pradio:1b}] at @s run function shadow:rd/p_tick
