tag @s add gh.done
execute at @s positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=!#shadow:not_living,tag=!gh.me,dx=0.6,dy=0.6,dz=0.6,limit=1,sort=nearest] run function shadow:gh/grab
scoreboard players set @a[tag=gh.me] gh.st 3
scoreboard players set @a[tag=gh.me] gh.pt 0
kill @s
