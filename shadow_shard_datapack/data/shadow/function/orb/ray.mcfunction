scoreboard players add #r orb 1
execute if score #r orb matches 1280.. run return run function shadow:orb/fail
execute unless block ~ ~ ~ #shadow:napalm_pass run return run function shadow:orb/mark
execute positioned ^ ^ ^0.2 run function shadow:orb/ray
