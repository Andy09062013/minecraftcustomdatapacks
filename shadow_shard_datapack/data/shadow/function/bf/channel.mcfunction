execute unless items entity @s weapon.mainhand *[custom_data~{shadow_bflag:1b}] run return run function shadow:bf/stop
scoreboard players remove @s bf.ch 1
scoreboard players operation #m bf = @s bf.ch
scoreboard players operation #m bf %= #4 bf
execute if score #m bf matches 0 if score @s bf.t matches 1 run function shadow:bf/ring1
execute if score #m bf matches 0 if score @s bf.t matches 2 run function shadow:bf/ring2
execute if score #m bf matches 0 if score @s bf.t matches 3 run function shadow:bf/ring3
execute if score #m bf matches 0 if score @s bf.t matches 4 run function shadow:bf/ring4
execute if score #m bf matches 0 if score @s bf.t matches 5 run function shadow:bf/ring5
scoreboard players operation #m bf = @s bf.ch
scoreboard players operation #m bf %= #20 bf
execute if score #m bf matches 19 run function shadow:bf/pulse
particle minecraft:dust{color:[1.0,0.8,0.2],scale:1.0} ~ ~2.4 ~ 0.2 0.2 0.2 0 2
execute if score @s bf.ch matches 0 run function shadow:bf/stop
