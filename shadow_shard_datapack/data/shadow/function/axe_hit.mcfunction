scoreboard players set @s shadow.axecd 60
scoreboard players operation #eid shadow.ev = #me shadow.id
tag @a[tag=shadow.axeowner] add shadow.eatk
# weak hit, the throw is mostly for marking
damage @s 6 minecraft:player_attack by @a[tag=shadow.eatk,limit=1]
scoreboard players set @s shadow.mark 200
scoreboard players operation @s shadow.markby = #eid shadow.ev
particle minecraft:sweep_attack ~ ~1 ~ 0.2 0.2 0.2 0 2
particle minecraft:dust{color:[0.7,0.0,0.0],scale:1.5} ~ ~1 ~ 0.3 0.5 0.3 0 25
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.8
playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.4 1.8
title @a[tag=shadow.eatk] actionbar {"text":"☠ Executioner's Mark applied","color":"dark_red"}
function shadow:exec_vic
