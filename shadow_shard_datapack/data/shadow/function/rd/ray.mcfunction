scoreboard players add #r rd 1
execute if score #r rd matches 25.. run return run title @s actionbar {"text":"Look at a block to place the radio","color":"red"}
execute unless block ~ ~ ~ #shadow:axe_pass align xyz positioned ~0.5 ~1 ~0.5 run return run function shadow:rd/try
execute positioned ^ ^ ^0.2 run function shadow:rd/ray
