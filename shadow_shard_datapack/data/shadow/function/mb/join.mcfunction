scoreboard players set @s mb.lv 0
tag @s remove mb.reg
execute store result storage shadow:mbox q.id int 1 run scoreboard players get @s shadow.id
function shadow:mb/join_m with storage shadow:mbox q
