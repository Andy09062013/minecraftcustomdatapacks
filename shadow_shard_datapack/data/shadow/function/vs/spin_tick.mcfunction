scoreboard players remove @s vs.spin 1
particle minecraft:sweep_attack ~ ~1 ~ 1.8 0.3 1.8 0 3 force
particle minecraft:dust{color:[0.55,0.2,1.0],scale:1.5} ~ ~0.6 ~ 2.4 0.6 2.4 0 25 force
particle minecraft:reverse_portal ~ ~1 ~ 2 0.8 2 0.05 15 force
particle minecraft:gust ~ ~0.5 ~ 1.5 0.2 1.5 0 1 force
scoreboard players operation #x vs = @s vs.spin
scoreboard players operation #x vs %= #5 vs
execute if score #x vs matches 0 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.8 0.7
scoreboard players operation #x vs = @s vs.spin
scoreboard players operation #x vs %= #10 vs
execute if score #x vs matches 0 run function shadow:vs/spin_hit
execute if score @s vs.spin matches ..0 run attribute @s minecraft:movement_speed modifier remove shadow:vs_spin
