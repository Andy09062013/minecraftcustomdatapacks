scoreboard players operation #by lc = @s lc.by
tag @a remove lc.me
execute as @a if score @s shadow.id = #by lc run tag @s add lc.me
particle minecraft:dust{color:[0.5,0.05,0.05],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0 4
execute if score #n lc < #thr lc if score #hp lc matches 3.. run damage @s 1 minecraft:magic
execute if score #n lc >= #thr lc run function shadow:lc/lethal
execute if score #n lc matches 3.. run function shadow:lc/heal_shooter
execute if score #n lc matches 5.. run function shadow:lc/drain
execute if score #n lc matches 7.. run function shadow:lc/hunger
title @a[tag=lc.me] actionbar [{"text":"🩸 Leeching x","color":"dark_red"},{"score":{"name":"#n","objective":"lc"},"color":"red","bold":true}]
tag @a remove lc.me
