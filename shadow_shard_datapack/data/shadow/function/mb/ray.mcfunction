scoreboard players add #r mb 1
execute if score #r mb matches 25.. run return run scoreboard players set #r mb 0
execute unless block ~ ~ ~ #shadow:axe_pass align xyz positioned ~0.5 ~1 ~0.5 run return run function shadow:mb/try
execute positioned ^ ^ ^0.2 run function shadow:mb/ray
