tag @s remove cb.held
data modify storage shadow:cb e set value {}
execute store result storage shadow:cb e.id int 1 run scoreboard players get @s shadow.id
function shadow:cb/swap_back with storage shadow:cb e
function shadow:cb/free
