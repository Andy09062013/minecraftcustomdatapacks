execute store result score #w ecl.tmp run data get entity @s active_effects[{id:"minecraft:wither"}].duration
scoreboard players add #w ecl.tmp 39
scoreboard players operation #w ecl.tmp /= #20 ecl.tmp
execute store result storage shadow:ecl d int 1 run scoreboard players get #w ecl.tmp
function shadow:ecl_wither_give with storage shadow:ecl
particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 20
particle minecraft:squid_ink ~ ~1 ~ 0.2 0.4 0.2 0.02 8
playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 0.4 1.8
