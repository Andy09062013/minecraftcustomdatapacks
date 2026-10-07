function shadow:gh/owner
execute unless entity @a[tag=gh.me] run return run kill @s
execute if entity @s[tag=gh.stuck] run return run function shadow:gh/rope_owner
scoreboard players add @s gh.t 1
execute if score @s gh.t matches 30.. run return run function shadow:gh/miss
function shadow:gh/step
execute if entity @s[tag=gh.done] run return 0
function shadow:gh/step
execute if entity @s[tag=gh.done] run return 0
function shadow:gh/step
execute if entity @s[tag=gh.done] run return 0
function shadow:gh/step
execute if entity @s[tag=gh.done] run return 0
execute at @s run tp @s ~ ~ ~ ~ ~1.6
execute at @s run function shadow:gh/rope_owner
