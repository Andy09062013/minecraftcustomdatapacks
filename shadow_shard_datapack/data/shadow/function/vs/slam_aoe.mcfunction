$execute as @e[type=!#shadow:not_living,tag=!vs.me,distance=..$(r)] run tag @s add vs.hit
$execute as @e[tag=vs.hit] run damage @s $(dmg) minecraft:player_attack by @a[tag=vs.me,limit=1]
$execute as @e[tag=vs.hit] at @s run function shadow:vs/stun {t:$(t)}
