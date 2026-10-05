execute if score #tier evo.v matches 5 run return run function shadow:evo_rage_start
execute if score #tier evo.v matches 1 run loot replace entity @s weapon.mainhand loot shadow:evo/tier2
execute if score #tier evo.v matches 2 run loot replace entity @s weapon.mainhand loot shadow:evo/tier3
execute if score #tier evo.v matches 3 run loot replace entity @s weapon.mainhand loot shadow:evo/tier4
execute if score #tier evo.v matches 4 run loot replace entity @s weapon.mainhand loot shadow:evo/tier5
execute if score #tier evo.v matches 1 run title @s actionbar {"text":"⬆ Upgraded to Stone!","color":"gray","bold":true}
execute if score #tier evo.v matches 2 run title @s actionbar {"text":"⬆ Upgraded to Iron!","color":"white","bold":true}
execute if score #tier evo.v matches 3 run title @s actionbar {"text":"⬆ Upgraded to Diamond!","color":"aqua","bold":true}
execute if score #tier evo.v matches 4 run title @s actionbar {"text":"⬆ Upgraded to Netherite! Now hit players to build RAGE","color":"dark_purple","bold":true}
playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 1.4
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.2
particle minecraft:totem_of_undying ~ ~1 ~ 0.4 0.6 0.4 0.4 40
particle minecraft:enchant ~ ~1 ~ 0.6 0.8 0.6 1 60
