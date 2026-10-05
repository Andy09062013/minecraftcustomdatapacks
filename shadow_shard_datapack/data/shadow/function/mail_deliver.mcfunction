scoreboard players set @s shadow.lph 5
scoreboard players set @s shadow.lsub 0
execute as @e[tag=shadow.mymail,limit=1] run function shadow:mail_open
execute as @a[tag=shadow.lrecv,limit=1] at @s run function shadow:mail_give
kill @e[tag=shadow.mymail]
