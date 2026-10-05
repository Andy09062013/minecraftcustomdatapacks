scoreboard players operation @s shadow.slamby = #tmp shadow.id
tag @s add shadow.slam_target
function shadow:stun_core
scoreboard players set @s shadow.stun 400
tag @a[tag=shadow.slam_fresh] remove shadow.slam_fresh
