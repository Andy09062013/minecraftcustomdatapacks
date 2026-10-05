damage @s 3 minecraft:freeze by @a[tag=shadow.fshooter,limit=1]
scoreboard players add @s shadow.fstage 1
scoreboard players set @s shadow.fdecay 200
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 1
execute if score @s shadow.fstage matches 1 run effect give @s minecraft:slowness 3 0
execute if score @s shadow.fstage matches 2 run effect give @s minecraft:slowness 5 1
execute if score @s shadow.fstage matches 2 run particle minecraft:snowflake ~ ~1 ~ 0.4 0.6 0.4 0.02 25
execute if score @s shadow.fstage matches 3.. run function shadow:frost_freeze
