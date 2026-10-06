scoreboard players operation #me mb = @s shadow.id
data modify storage shadow:mbox q set value {}
execute store result storage shadow:mbox q.id int 1 run scoreboard players get @s shadow.id
execute store result storage shadow:mbox q.v int 1 run scoreboard players get @s mb.v
function shadow:mb/check_m with storage shadow:mbox q
