execute if entity @a[tag=shadow.vbower,scores={ebow.u=..4}] run return run kill @s
data modify entity @s pickup set value 0b
tag @s add shadow.vbow
execute if predicate shadow:full_moon_night run return run function shadow:ebow/void_dmg {m:0.017}
execute unless predicate shadow:is_day run return run function shadow:ebow/void_dmg {m:0.0135}
function shadow:ebow/void_dmg {m:0.0075}
