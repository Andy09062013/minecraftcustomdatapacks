$execute as @e[type=minecraft:marker,tag=orb.anchor,limit=1] at @s rotated $(a) 0 positioned ^ ^$(h) ^$(r) run tp @e[type=minecraft:block_display,tag=orb.drone,scores={orb.a=$(a)},limit=1] ~ ~ ~
$execute as @e[type=minecraft:marker,tag=orb.anchor,limit=1] at @s rotated $(a) 0 positioned ^ ^$(h) ^$(r) run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
