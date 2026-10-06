advancement revoke @s only shadow:vs_hit_m
execute store result score #g vs run time query gametime
execute if score @s vs.sw = #g vs run return 0
tag @s add vs.ha
