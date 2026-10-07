tag @e[tag=gh.cur] add gh.ropeend
scoreboard players set #k gh 0
execute anchored eyes positioned ^ ^-0.4 ^ run function shadow:gh/rope_step
tag @e remove gh.ropeend
