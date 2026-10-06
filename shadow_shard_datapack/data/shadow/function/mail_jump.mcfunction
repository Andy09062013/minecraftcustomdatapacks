scoreboard players set @s shadow.lph 4
execute unless entity @a[tag=shadow.lrecv] run function shadow:mb/drop_in
execute at @a[tag=shadow.lrecv,limit=1] run tp @s ~ ~24 ~
execute at @s run tp @e[tag=shadow.mymail] ~ ~-0.3 ~
