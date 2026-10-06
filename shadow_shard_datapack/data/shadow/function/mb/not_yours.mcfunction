data modify storage shadow:mbox q set value {name:"someone else"}
execute store result storage shadow:mbox q.id int 1 run scoreboard players get #me mb
function shadow:mb/getname with storage shadow:mbox q
function shadow:mb/not_yours_m with storage shadow:mbox q
