scoreboard players add @s shadow.lsub 1
tp @s ~ ~0.7 ~ ~10 0
execute if score @s shadow.lsub matches 30.. run function shadow:mail_jump
