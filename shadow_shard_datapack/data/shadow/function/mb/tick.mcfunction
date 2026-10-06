scoreboard players remove @a[scores={mb.use=1..}] mb.use 1
execute as @a[scores={mb.lv=1..}] run function shadow:mb/join
execute as @a[tag=!mb.reg] at @s run function shadow:mb/register
execute as @a store result score @s mb.n run clear @s *[custom_data~{shadow_mailbox:1b}] 0
execute as @a[scores={mb.n=2..}] run function shadow:mb/one
scoreboard players add #t mb 1
execute if score #t mb matches 20.. as @e[type=minecraft:marker,tag=mb.base] at @s run function shadow:mb/check
execute if score #t mb matches 20.. run scoreboard players set #t mb 0
