scoreboard players add #napr shadow.nap 1
execute if score #napr shadow.nap matches 640.. run return run function shadow:napalm_fail
execute unless block ~ ~ ~ #shadow:napalm_pass run return run function shadow:napalm_mark
execute positioned ^ ^ ^0.2 run function shadow:napalm_ray
