execute store result score #ry blb run random value -100..100
scoreboard players operation #ry blb *= #sp blb
execute store result storage shadow:blb s.yaw double 0.01 run scoreboard players get #ry blb
execute store result score #rp blb run random value -100..100
scoreboard players operation #rp blb *= #sp blb
execute store result storage shadow:blb s.pit double 0.01 run scoreboard players get #rp blb
execute anchored eyes positioned ^ ^-0.1 ^0.6 run function shadow:blb/spawn with storage shadow:blb s
scoreboard players remove #n blb 1
execute if score #n blb matches 1.. run function shadow:blb/spawn_loop
