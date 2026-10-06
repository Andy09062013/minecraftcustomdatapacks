execute store result score @s vs.sw run time query gametime
tag @s add vs.me
$execute rotated ~ 0 positioned ^ ^0.6 ^$(f) as @e[type=!#shadow:not_living,tag=!vs.me,distance=..$(r)] run tag @s add vs.hit
$execute as @e[tag=vs.hit] run damage @s $(dmg) minecraft:player_attack by @a[tag=vs.me,limit=1]
function shadow:vs/count
$execute rotated ~-60 0 positioned ^ ^1 ^$(a) run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force
$execute rotated ~-30 0 positioned ^ ^1 ^$(a) run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force
$execute rotated ~ 0 positioned ^ ^1 ^$(a) run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force
$execute rotated ~30 0 positioned ^ ^1 ^$(a) run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force
$execute rotated ~60 0 positioned ^ ^1 ^$(a) run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force
$execute rotated ~ 0 positioned ^ ^1 ^$(f) run particle minecraft:dust{color:[0.6,0.3,1.0],scale:1.6} ~ ~ ~ 1.4 0.3 1.4 0 40 force
$execute rotated ~ 0 positioned ^ ^1 ^$(f) run particle minecraft:reverse_portal ~ ~ ~ 1.2 0.3 1.2 0.02 30 force
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.phantom.flap player @a ~ ~ ~ 0.8 0.6
