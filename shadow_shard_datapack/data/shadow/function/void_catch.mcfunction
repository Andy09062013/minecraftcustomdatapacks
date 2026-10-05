execute unless data entity @s Thrower run return run kill @s
data modify storage shadow:void t set from entity @s Thrower
execute store result score #vc ecl.tmp run data get entity @s Item.count
execute as @a run function shadow:void_match
kill @s
