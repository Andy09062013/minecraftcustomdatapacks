scoreboard players operation #rt orb = #ot orb
scoreboard players operation #rt orb %= #5 orb
execute unless score #rt orb matches 0 run return 0
scoreboard players operation #ri orb = #ot orb
scoreboard players operation #ri orb /= #5 orb
scoreboard players operation #ri orb %= #8 orb
scoreboard players set #ra orb 1400
execute if score #ot orb matches 60..200 run scoreboard players operation #ra orb = #ot orb
execute if score #ot orb matches 60..200 run scoreboard players operation #ra orb *= #-8 orb
execute if score #ot orb matches 60..200 run scoreboard players add #ra orb 1880
scoreboard players operation #rb orb = #ra orb
scoreboard players operation #rb orb *= #5 orb
scoreboard players operation #rb orb /= #7 orb
execute store result storage shadow:orb rt.a double 0.01 run scoreboard players get #ra orb
execute store result storage shadow:orb rt.ah double 0.005 run scoreboard players get #ra orb
execute store result storage shadow:orb rt.b double 0.01 run scoreboard players get #rb orb
execute store result storage shadow:orb rt.bh double 0.005 run scoreboard players get #rb orb
execute if score #ri orb matches 0 run function shadow:orb/ret0 with storage shadow:orb rt
execute if score #ri orb matches 1 run function shadow:orb/ret1 with storage shadow:orb rt
execute if score #ri orb matches 2 run function shadow:orb/ret2 with storage shadow:orb rt
execute if score #ri orb matches 3 run function shadow:orb/ret3 with storage shadow:orb rt
execute if score #ri orb matches 4 run function shadow:orb/ret4 with storage shadow:orb rt
execute if score #ri orb matches 5 run function shadow:orb/ret5 with storage shadow:orb rt
execute if score #ri orb matches 6 run function shadow:orb/ret6 with storage shadow:orb rt
execute if score #ri orb matches 7 run function shadow:orb/ret7 with storage shadow:orb rt
