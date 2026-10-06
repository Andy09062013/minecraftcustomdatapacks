execute if score #t cs.t matches ..115 as @e[tag=cs.sw] run scoreboard players add @s cs.a 5
execute as @e[tag=cs.sw] run scoreboard players operation @s cs.a %= #360 cs.t
scoreboard players set #sh cs.t 150
scoreboard players set #sr cs.t 300
execute if score #t cs.t matches 91..115 run scoreboard players operation #sh cs.t = #t cs.t
execute if score #t cs.t matches 91..115 run scoreboard players remove #sh cs.t 91
execute if score #t cs.t matches 91..115 run scoreboard players operation #sh cs.t *= #9 cs.t
execute if score #t cs.t matches 91..115 run scoreboard players add #sh cs.t 150
execute if score #t cs.t matches 116.. run scoreboard players operation #sr cs.t = #t cs.t
execute if score #t cs.t matches 116.. run scoreboard players remove #sr cs.t 116
execute if score #t cs.t matches 116.. run scoreboard players operation #sr cs.t *= #110 cs.t
execute if score #t cs.t matches 116.. run scoreboard players add #sr cs.t 300
execute if score #t cs.t matches 116.. run scoreboard players operation #sh cs.t = #t cs.t
execute if score #t cs.t matches 116.. run scoreboard players remove #sh cs.t 116
execute if score #t cs.t matches 116.. run scoreboard players operation #sh cs.t *= #-40 cs.t
execute if score #t cs.t matches 116.. run scoreboard players add #sh cs.t 375
execute if score #sr cs.t matches 1201.. run scoreboard players set #sr cs.t 1200
execute if score #sh cs.t matches ..30 run scoreboard players set #sh cs.t 30
execute store result storage shadow:cs sw.r double 0.01 run scoreboard players get #sr cs.t
execute store result storage shadow:cs sw.h double 0.01 run scoreboard players get #sh cs.t
execute as @e[tag=cs.sw] run function shadow:cs/sword_tp
