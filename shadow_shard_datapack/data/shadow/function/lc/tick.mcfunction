execute as @e[type=minecraft:block_display,tag=lc.vis] at @s run function shadow:lc/track
execute as @e[type=minecraft:item] if items entity @s contents *[custom_data~{shadow_leech:1b}] at @s run function shadow:lc/fall_off
scoreboard players operation #m lc = #now vs
scoreboard players operation #m lc %= #20 lc
execute if score #m lc matches 0 as @a if items entity @s container.* *[custom_data~{shadow_leech:1b}] at @s run function shadow:lc/player_sec
execute if score #m lc matches 0 as @a unless items entity @s container.* *[custom_data~{shadow_leech:1b}] if items entity @s weapon.offhand *[custom_data~{shadow_leech:1b}] at @s run function shadow:lc/player_sec
execute if score #m lc matches 0 as @e[type=!minecraft:player,scores={lc.n=1..}] at @s run function shadow:lc/mob_sec
