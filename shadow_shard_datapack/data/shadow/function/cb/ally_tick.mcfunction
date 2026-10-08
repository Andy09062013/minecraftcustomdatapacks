scoreboard players remove @s cb.t 1
execute if score @s cb.t matches ..0 run return run function shadow:cb/ally_end
scoreboard players operation #w cb = @s cb.t
scoreboard players operation #w cb %= #10 cb
execute unless score #w cb matches 0 run return 0
scoreboard players operation #by cb = @s cb.by
tag @a remove cb.boss
execute as @a if score @s shadow.id = #by cb run tag @s add cb.boss
execute unless entity @a[tag=cb.boss] run return 0
tag @e remove cb.foe
tag @s add cb.self
execute as @a[tag=cb.boss,limit=1] at @s anchored eyes positioned ^ ^ ^ run function shadow:cb/aim_start
execute unless entity @e[tag=cb.foe] as @e[type=#shadow:cb_hostile,tag=!cb.ally,distance=..16,sort=nearest,limit=1] run tag @s add cb.foe
execute if entity @e[tag=cb.foe] run function shadow:cb/ally_aggro
tag @s remove cb.self
tag @e remove cb.foe
particle minecraft:happy_villager ~ ~1.8 ~ 0.2 0.1 0.2 0 1
