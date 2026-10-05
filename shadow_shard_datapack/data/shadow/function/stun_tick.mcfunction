scoreboard players remove @s shadow.stun 1
particle minecraft:crit ~ ~2.1 ~ 0.3 0.05 0.3 0 2
execute if score @s shadow.stun matches ..0 run function shadow:stun_end
