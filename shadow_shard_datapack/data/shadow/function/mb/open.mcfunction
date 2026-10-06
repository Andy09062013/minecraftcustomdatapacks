data modify storage shadow:mbox q set value {}
execute store result storage shadow:mbox q.id int 1 run scoreboard players get @s shadow.id
scoreboard players set #n mb 0
function shadow:mb/take with storage shadow:mbox q
playsound minecraft:block.iron_trapdoor.open player @s ~ ~ ~ 1 1.2
execute if score #n mb matches 0 run tellraw @s {"text":"📫 Your mailbox is empty","color":"gray"}
execute if score #n mb matches 1.. run tellraw @s [{"text":"📫 You took ","color":"gold"},{"score":{"name":"#n","objective":"mb"},"color":"white","bold":true},{"text":" letter(s) out of your mailbox","color":"gold"}]
execute if score #n mb matches 1.. run playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
