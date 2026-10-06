data modify storage shadow:mbox q set value {}
data modify storage shadow:mbox q.name set from storage shadow:letter to
scoreboard players set #to mb 0
function shadow:mb/find with storage shadow:mbox q
execute if score #to mb matches 0 run return run function shadow:letter_fail
execute store result storage shadow:mbox q.id int 1 run scoreboard players get #to mb
scoreboard players set #ok mb 0
function shadow:mb/has_box with storage shadow:mbox q
execute if score #ok mb matches 0 run return run function shadow:mb/no_box
scoreboard players operation #lto shadow.ev = #to mb
function shadow:letter_send
