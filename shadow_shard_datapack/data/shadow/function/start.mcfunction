advancement revoke @s only shadow:used_shard
scoreboard players set @s shadow.timer 400
attribute @s minecraft:fall_damage_multiplier modifier remove shadow:nofall
attribute @s minecraft:fall_damage_multiplier modifier add shadow:nofall -1 add_multiplied_total
tag @s add shadow.held
