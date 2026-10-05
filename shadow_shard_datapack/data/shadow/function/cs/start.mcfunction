execute if score #run cs.t matches 1.. run return fail
scoreboard players set #run cs.t 1
scoreboard players set #prep cs.t 1
scoreboard players set #t cs.t 0
scoreboard players set #f cs.t 0
scoreboard players set #csadd evo.v 280
scoreboard players set #r cs.t 1200
scoreboard players set #h cs.t 600
data modify storage shadow:cs cam set value {r:12.0d,h:6.0d,jx:0.0d,jy:0.0d,jz:0.0d}
tag @s add cs.hero
execute in minecraft:the_nether run forceload add 999984 999984 1000048 1000048
