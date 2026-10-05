advancement revoke @s only shadow:grenade_throw
scoreboard players operation #me shadow.id = @s shadow.id
execute anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["shadow.fv0"]}
execute anchored eyes positioned ^ ^ ^1 run summon minecraft:marker ~ ~ ~ {Tags:["shadow.fv1"]}
execute anchored eyes positioned ^ ^ ^0.6 run summon minecraft:item ~ ~ ~ {Tags:["shadow.gren","shadow.grennew"],PickupDelay:32767s,Item:{id:"minecraft:fire_charge",count:1,components:{"minecraft:item_model":"shadow:custom","minecraft:custom_model_data":{strings:["grenade"]}}}}
execute as @e[type=minecraft:item,tag=shadow.grennew,limit=1] run function shadow:grenade_vec
execute if entity @s[tag=shadow.holythrow] as @e[type=minecraft:item,tag=shadow.grennew] run function shadow:grenade_make_holy
execute if entity @s[tag=shadow.pipethrow] as @e[type=minecraft:item,tag=shadow.grennew] run function shadow:grenade_make_pipe
tag @s remove shadow.pipethrow
tag @s remove shadow.holythrow
scoreboard players set @e[tag=shadow.grennew] shadow.gfuse 20
scoreboard players operation @e[tag=shadow.grennew] shadow.id = #me shadow.id
tag @e[tag=shadow.grennew] remove shadow.grennew
kill @e[type=minecraft:marker,tag=shadow.fv0]
kill @e[type=minecraft:marker,tag=shadow.fv1]
