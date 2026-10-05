scoreboard players operation @s shadow.execby = #eid shadow.ev
tag @s add shadow.exec_t
function shadow:stun_core
scoreboard players set @s shadow.stun 30
particle minecraft:dust{color:[0.6,0.0,0.0],scale:2.0} ~ ~2.3 ~ 0.2 0.1 0.2 0 20 force
execute as @a[tag=shadow.eatk,limit=1] at @s run function shadow:exec_launch
