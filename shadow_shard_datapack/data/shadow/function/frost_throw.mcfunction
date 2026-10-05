kill @e[tag=shadow.myorb,limit=1,sort=random]
execute anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["shadow.fv0"]}
execute anchored eyes positioned ^ ^ ^1 run summon minecraft:marker ~ ~ ~ {Tags:["shadow.fv1"]}
execute anchored eyes positioned ^ ^ ^0.8 run summon minecraft:snowball ~ ~ ~ {Tags:["shadow.icenew"],Item:{id:"minecraft:ice",count:1}}
function shadow:frost_vec
data modify entity @e[type=minecraft:snowball,tag=shadow.icenew,limit=1] Owner set from entity @s UUID
execute as @e[type=minecraft:snowball,tag=shadow.icenew] at @s run function shadow:frost_proj_setup
kill @e[type=minecraft:marker,tag=shadow.fv0]
kill @e[type=minecraft:marker,tag=shadow.fv1]
playsound minecraft:entity.snowball.throw player @a ~ ~ ~ 1 0.6
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.5 1.8
