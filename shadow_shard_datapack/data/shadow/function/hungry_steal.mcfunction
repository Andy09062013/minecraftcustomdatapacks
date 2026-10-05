execute store result score #food shadow.heal run data get entity @s foodLevel
execute if score #food shadow.heal matches 7.. run scoreboard players set #food shadow.heal 6
execute if score #food shadow.heal matches ..0 run return 0
effect give @s minecraft:hunger 1 255 true
playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 0.6
particle minecraft:item_slime ~ ~1 ~ 0.3 0.5 0.3 0 15
execute as @a[tag=shadow.hshooter] run scoreboard players operation @s shadow.feed += #food shadow.heal
tellraw @a[tag=shadow.hshooter] [{"text":"You stole ","color":"gold"},{"score":{"name":"#food","objective":"shadow.heal"}},{"text":" hunger","color":"gold"}]
