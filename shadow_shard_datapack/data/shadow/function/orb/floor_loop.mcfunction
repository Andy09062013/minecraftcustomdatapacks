execute store result storage shadow:orb f.x int 1 run random value -23..23
execute store result storage shadow:orb f.z int 1 run random value -23..23
execute store result score #ft orb run random value 1..10
function shadow:orb/floor_at with storage shadow:orb f
scoreboard players remove #cf orb 1
execute if score #cf orb matches 1.. run function shadow:orb/floor_loop
