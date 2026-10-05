particle minecraft:dust{color:[0.7,0.0,0.0],scale:1.0} ~ ~ ~ 0.05 0.05 0.05 0 2
execute on vehicle if entity @s[nbt={inGround:1b}] run return run function shadow:blood_miss
execute on vehicle run return 0
function shadow:blood_hit
kill @s
