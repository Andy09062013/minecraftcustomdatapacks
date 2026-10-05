summon minecraft:marker ~ ~ ~ {Tags:["shadow.jet","shadow.jetcore","shadow.jetnew"]}
execute store result score #napj shadow.nap run random value 1..3
execute if score #napj shadow.nap matches 1 run function shadow:napalm_jet_f35
execute if score #napj shadow.nap matches 2 run function shadow:napalm_jet_a10
execute if score #napj shadow.nap matches 3 run function shadow:napalm_jet_typhoon
tp @e[tag=shadow.jetnew] ~ ~ ~ ~ 0
tag @e[tag=shadow.jetnew] remove shadow.jetnew
