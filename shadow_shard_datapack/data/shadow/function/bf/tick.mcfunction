scoreboard players remove @a[scores={bf.cd=1..}] bf.cd 1
execute as @a[scores={bf.u=1..}] at @s run function shadow:bf/click
execute as @a[scores={bf.ch=1..}] at @s run function shadow:bf/channel
scoreboard players operation #m bf = #now vs
scoreboard players operation #m bf %= #10 bf
execute if score #m bf matches 0 as @a unless score @s bf.ch matches 1.. if items entity @s weapon.mainhand *[custom_data~{shadow_bflag:1b}] run function shadow:bf/hud
execute if score #m bf matches 0 as @a unless score @s bf.ch matches 1.. if items entity @s weapon.mainhand *[custom_data~{shadow_bflag:1b}] at @s run function shadow:bf/mark_allies
