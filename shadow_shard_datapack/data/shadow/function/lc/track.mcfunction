particle minecraft:dust{color:[0.5,0.05,0.05],scale:0.8} ~ ~ ~ 0.03 0.03 0.03 0 1
execute on vehicle if entity @s[nbt={inGround:1b}] run return run function shadow:blood_miss
execute on vehicle run return 0
function shadow:lc/hit
kill @s
