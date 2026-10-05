scoreboard players set @s shadow.axecd 10
scoreboard players operation #eid shadow.ev = #me shadow.id
tag @a[tag=shadow.axeowner] add shadow.eatk
scoreboard players set #mk shadow.ev 0
execute if score @s shadow.mark matches 1.. if score @s shadow.markby = #eid shadow.ev run scoreboard players set #mk shadow.ev 1
execute if score #mk shadow.ev matches 1 run damage @s 7.35 minecraft:player_attack by @a[tag=shadow.eatk,limit=1]
execute if score #mk shadow.ev matches 0 run damage @s 7 minecraft:player_attack by @a[tag=shadow.eatk,limit=1]
scoreboard players set @s shadow.mark 200
scoreboard players operation @s shadow.markby = #eid shadow.ev
particle minecraft:sweep_attack ~ ~1 ~ 0.2 0.2 0.2 0 2
particle minecraft:dust{color:[0.7,0.0,0.0],scale:1.5} ~ ~1 ~ 0.3 0.5 0.3 0 25
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.8
playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.4 1.8
title @a[tag=shadow.eatk] actionbar {"text":"☠ Executioner's Mark applied","color":"dark_red"}
function shadow:exec_vic
