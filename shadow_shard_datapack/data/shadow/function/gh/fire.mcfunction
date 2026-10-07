advancement revoke @s only shadow:gh_fire
scoreboard players add @s gh.dmg 1
tag @s add gh.fix
execute if score @s gh.st matches 1.. run function shadow:gh/end
scoreboard players operation #me gh = @s shadow.id
execute anchored eyes positioned ^ ^-0.1 ^0.6 run summon minecraft:item_display ~ ~ ~ {Tags:["gh.hook","gh.new"],teleport_duration:1,item:{id:"minecraft:tripwire_hook",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
data modify entity @e[type=minecraft:item_display,tag=gh.new,limit=1] Rotation set from entity @s Rotation
scoreboard players operation @e[type=minecraft:item_display,tag=gh.new] shadow.id = #me gh
scoreboard players set @e[type=minecraft:item_display,tag=gh.new] gh.t 0
tag @e[type=minecraft:item_display,tag=gh.new] remove gh.new
scoreboard players set @s gh.st 1
playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 0.7
playsound minecraft:block.chain.break player @a ~ ~ ~ 0.8 1.2
