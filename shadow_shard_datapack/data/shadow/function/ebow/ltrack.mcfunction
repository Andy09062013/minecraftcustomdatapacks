execute on vehicle if entity @s[nbt={inGround:1b}] run return run function shadow:ebow/lland
particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 2 force
particle minecraft:dust{color:[1.0,0.9,0.45],scale:1.6} ~ ~ ~ 0.1 0.1 0.1 0 3 force
particle minecraft:wax_on ~ ~ ~ 0.15 0.15 0.15 0 1 force
execute on vehicle run return 0
function shadow:ebow/boom
kill @s
