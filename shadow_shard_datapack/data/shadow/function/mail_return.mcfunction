scoreboard players operation @s shadow.lto = @s shadow.lfrom
tag @a[tag=shadow.lsend] add shadow.lrecv
tellraw @a[tag=shadow.lsend] {"text":"✉ The player you wrote to went offline, the bat is bringing your letter back","color":"yellow"}
