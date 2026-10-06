tag @s remove vs.slam
attribute @s minecraft:gravity modifier remove shadow:vs_slam
attribute @s minecraft:fall_damage_multiplier modifier remove shadow:vs_slam
execute store result score @s vs.sw run time query gametime
tag @s add vs.me
execute if score @s vs.l matches 1 run function shadow:vs/slam_aoe {r:3,dmg:5,t:20}
execute if score @s vs.l matches 2 run function shadow:vs/slam_aoe {r:3.5,dmg:6,t:30}
execute if score @s vs.l matches 3 run function shadow:vs/slam_aoe {r:4,dmg:7,t:40}
execute if score @s vs.l matches 4.. run function shadow:vs/slam_aoe {r:4.5,dmg:8,t:50}
function shadow:vs/count
execute if score @s vs.l matches 4.. run function shadow:vs/wave_spawn
particle minecraft:explosion ~ ~0.5 ~ 1.5 0.2 1.5 0 6 force
particle minecraft:block{block_state:"minecraft:deepslate"} ~ ~0.2 ~ 2.5 0.1 2.5 0.3 120 force
particle minecraft:dust{color:[0.55,0.2,1.0],scale:2.5} ~ ~0.3 ~ 3 0.1 3 0 60 force
playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 1.2
