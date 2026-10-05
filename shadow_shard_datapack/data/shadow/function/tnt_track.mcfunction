particle minecraft:flame ~ ~0.2 ~ 0.05 0.05 0.05 0.01 2
particle minecraft:smoke ~ ~0.2 ~ 0.05 0.05 0.05 0.01 2
execute on vehicle if entity @s[nbt={inGround:1b}] run return run function shadow:tnt_land
execute on vehicle run return 0
function shadow:tnt_boom
kill @s
