execute on vehicle if entity @s[nbt={inGround:1b}] run return run function shadow:blood_miss
execute on vehicle run return 0
effect give @e[type=!#shadow:not_living,distance=..2.5,sort=nearest,limit=1] minecraft:poison 2 0
kill @s
