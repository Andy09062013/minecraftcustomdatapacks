scoreboard players operation #by lc = @s shadow.id
tag @a remove lc.me
execute as @a if score @s shadow.id = #by lc run tag @s add lc.me
execute as @e[type=!#shadow:not_living,tag=!lc.me,distance=..2.5,sort=nearest,limit=1] at @s run function shadow:lc/stick
tag @a remove lc.me
