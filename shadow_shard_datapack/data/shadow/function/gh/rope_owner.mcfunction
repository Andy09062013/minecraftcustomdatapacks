tag @s add gh.ropeend
scoreboard players set #k gh 0
execute as @a[tag=gh.me,limit=1] at @s anchored eyes positioned ^ ^-0.4 ^ run function shadow:gh/rope_step
tag @s remove gh.ropeend
