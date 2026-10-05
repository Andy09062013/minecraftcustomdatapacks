tag @s add shadow.mbinit
summon minecraft:marker ~ ~ ~ {Tags:["shadow.mbmark","shadow.mbnew"]}
ride @e[type=minecraft:marker,tag=shadow.mbnew,limit=1] mount @s
tag @e[type=minecraft:marker,tag=shadow.mbnew] remove shadow.mbnew
