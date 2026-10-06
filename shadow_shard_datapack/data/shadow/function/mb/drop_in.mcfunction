scoreboard players operation #to mb = @s shadow.lto
data modify storage shadow:mbox q set value {}
execute store result storage shadow:mbox q.id int 1 run scoreboard players get #to mb
scoreboard players set #ok mb 0
function shadow:mb/has_box with storage shadow:mbox q
execute if score #ok mb matches 0 run return run function shadow:mail_return
execute as @e[tag=shadow.mymail,limit=1] run function shadow:mail_open
data modify storage shadow:mbox tmp set from entity @e[tag=shadow.mailgive,limit=1] item
function shadow:mb/deposit with storage shadow:mbox q
kill @e[tag=shadow.mymail]
scoreboard players set @s shadow.lph 5
scoreboard players set @s shadow.lsub 0
tellraw @a[tag=shadow.lsend] {"text":"📫 They're offline, so the bat dropped your letter in their mailbox","color":"green"}
