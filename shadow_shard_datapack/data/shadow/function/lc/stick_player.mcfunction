execute store result score #a lc run clear @s *[custom_data~{shadow_leech:1b}] 0
loot give @s loot shadow:give/leech
execute store result score #n lc run clear @s *[custom_data~{shadow_leech:1b}] 0
execute if score #n lc = #a lc run return run title @a[tag=lc.me] actionbar {"text":"Their inventory is full, the leech fell off","color":"gray"}
scoreboard players operation @s lc.by = #by lc
scoreboard players add @s shadow.heal 1
function shadow:lc/stuck_fx
