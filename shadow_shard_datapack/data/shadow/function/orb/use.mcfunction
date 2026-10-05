advancement revoke @s only shadow:orb_use
execute if score #orun orb matches 1.. run return run function shadow:orb/refund
execute if score #run cs.t matches 1.. run return run function shadow:orb/refund
scoreboard players set #r orb 0
execute anchored eyes positioned ^ ^ ^ run function shadow:orb/ray
