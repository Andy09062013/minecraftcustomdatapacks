scoreboard players operation #n lc = @s lc.n
execute store result score #thr lc run attribute @s minecraft:max_health get 1
scoreboard players remove #thr lc 20
scoreboard players operation #thr lc /= #10 lc
execute if score #thr lc matches ..-1 run scoreboard players set #thr lc 0
scoreboard players add #thr lc 10
execute store result score #hp lc run data get entity @s Health
scoreboard players set #pl lc 0
function shadow:lc/effects
