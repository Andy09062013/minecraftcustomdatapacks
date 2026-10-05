particle minecraft:item_slime ~ ~ ~ 0.05 0.05 0.05 0 1
execute on vehicle if entity @s[nbt={inGround:1b}] run return run function shadow:blood_miss
execute on vehicle run return 0
function shadow:hungry_hit
kill @s
