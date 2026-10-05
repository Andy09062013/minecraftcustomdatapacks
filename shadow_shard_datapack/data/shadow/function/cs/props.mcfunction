scoreboard players add @e[tag=cs.bolt] cs.t 1
kill @e[tag=cs.bolt,scores={cs.t=4..}]
execute as @e[type=minecraft:item_display,tag=cs.sword] at @s if score #t cs.t matches ..116 run tp @s ~ ~-2.2 ~
execute as @e[type=minecraft:item_display,tag=cs.sword] at @s if score #t cs.t matches 92..116 run particle minecraft:flame ~ ~6 ~ 0.4 2 0.4 0.05 15 force
execute as @e[type=minecraft:block_display,tag=cs.met] at @s run function shadow:cs/meteor_tick
