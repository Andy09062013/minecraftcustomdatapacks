execute store result score #n lc run clear @s *[custom_data~{shadow_leech:1b}] 0
scoreboard players set #thr lc 10
scoreboard players operation #hp lc = @s shadow.hp
scoreboard players set #pl lc 1
function shadow:lc/effects
