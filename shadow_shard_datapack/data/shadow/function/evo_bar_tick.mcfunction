execute store result score #now evo.v run time query gametime
scoreboard players operation #rem evo.v = @s evo.end
scoreboard players operation #rem evo.v -= #now evo.v
execute store result storage shadow:evo id int 1 run scoreboard players get @s shadow.id
execute store result storage shadow:evo rem int 1 run scoreboard players get #rem evo.v
execute if score #rem evo.v matches ..0 run return run function shadow:evo_bar_end with storage shadow:evo
function shadow:evo_bar_set with storage shadow:evo
