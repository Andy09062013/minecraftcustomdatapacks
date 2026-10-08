tag @s remove shadow.exec_t
scoreboard players reset @s shadow.execby
scoreboard players reset @s shadow.mark
particle minecraft:dust{color:[0.6,0.0,0.0],scale:2.5} ~ ~1 ~ 0.4 0.7 0.4 0 120 force
particle minecraft:sweep_attack ~ ~1 ~ 0.6 0.4 0.6 0 8 force
particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:soul ~ ~1 ~ 0.4 0.6 0.4 0.05 20 force
playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 2 0.7
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 2 0.5
playsound minecraft:block.bell.use player @a ~ ~ ~ 1 0.5
function shadow:stun_end
damage @s 99999 minecraft:magic by @a[tag=shadow.exec_now,limit=1]
