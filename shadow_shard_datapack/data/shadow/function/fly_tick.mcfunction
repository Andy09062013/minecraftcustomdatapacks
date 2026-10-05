execute if score @s shadow.fly matches 2.. run scoreboard players remove @s shadow.fly 1
execute if score @s shadow.fly matches 1 if entity @s[nbt={OnGround:1b}] run function shadow:land
