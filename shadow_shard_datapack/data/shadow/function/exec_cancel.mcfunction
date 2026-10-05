scoreboard players set @s shadow.exect 0
execute as @e[tag=shadow.my_et] run function shadow:stun_end
tag @e[tag=shadow.my_et] remove shadow.exec_t
tag @e[tag=shadow.my_et] remove shadow.my_et
