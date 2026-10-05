data modify storage shadow:void p set from storage shadow:void t
execute store success score #d ecl.tmp run data modify storage shadow:void p set from entity @s UUID
execute if score #d ecl.tmp matches 0 at @s run function shadow:void_give
