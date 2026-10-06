scoreboard players set #n mb 0
$execute store result score #n mb run data get storage shadow:mbox box[{id:$(id)}].items
execute if score #n mb matches 1.. run tellraw @s [{"text":"📫 You have ","color":"gold"},{"score":{"name":"#n","objective":"mb"},"color":"white","bold":true},{"text":" letter(s) waiting in your mailbox!","color":"gold"}]
execute if score #n mb matches 1.. at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.4
