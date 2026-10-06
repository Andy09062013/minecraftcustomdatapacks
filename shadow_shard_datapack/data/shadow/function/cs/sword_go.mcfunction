$execute as @e[type=minecraft:marker,tag=cs.anchor,limit=1] at @s rotated $(a) 0 positioned ^ ^$(h) ^$(r) run tp @e[tag=cs.sw,scores={cs.a=$(a)},limit=1,sort=nearest] ~ ~ ~ $(a) 0
$execute if score #t cs.t matches 116..124 as @e[type=minecraft:marker,tag=cs.anchor,limit=1] at @s rotated $(a) 0 positioned ^ ^$(h) ^$(r) run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.02 3 force
