advancement revoke @s only shadow:blunder_use
tag @s add shadow.blb_restore
scoreboard players set #ammo blb 0
execute if entity @s[gamemode=creative] run return run function shadow:blb/shoot {item:"minecraft:cobblestone",n:12,dmg:500,spread:9}
execute store result score #c blb run clear @s minecraft:cobblestone 0
execute if score #c blb matches 2.. run return run function shadow:blb/use {item:"minecraft:cobblestone",n:12,dmg:500,spread:9}
execute store result score #c blb run clear @s minecraft:cobbled_deepslate 0
execute if score #c blb matches 2.. run return run function shadow:blb/use {item:"minecraft:cobbled_deepslate",n:12,dmg:500,spread:9}
execute store result score #c blb run clear @s minecraft:stone 0
execute if score #c blb matches 2.. run return run function shadow:blb/use {item:"minecraft:stone",n:6,dmg:1100,spread:6}
execute store result score #c blb run clear @s minecraft:deepslate 0
execute if score #c blb matches 2.. run return run function shadow:blb/use {item:"minecraft:deepslate",n:6,dmg:1100,spread:6}
title @s actionbar {"text":"Out of ammo! Needs 2 cobblestone, cobbled deepslate, stone or deepslate","color":"red"}
playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 0.7
