scoreboard players set #r mb 1
item replace entity @s weapon.mainhand with minecraft:air
scoreboard players operation #me mb = @s shadow.id
execute as @e[tag=mb.part] if score @s shadow.id = #me mb run kill @s
scoreboard players add #v mb 1
data modify storage shadow:mbox q set value {name:"Someone"}
execute store result storage shadow:mbox q.id int 1 run scoreboard players get @s shadow.id
execute store result storage shadow:mbox q.v int 1 run scoreboard players get #v mb
execute store result storage shadow:mbox q.yaw float 1 run data get entity @s Rotation[0]
function shadow:mb/getname with storage shadow:mbox q
function shadow:mb/place_m with storage shadow:mbox q
execute as @e[tag=mb.new] run scoreboard players operation @s shadow.id = #me mb
execute as @e[tag=mb.new] run scoreboard players operation @s mb.v = #v mb
tag @e[tag=mb.new] remove mb.new
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 0.8
playsound minecraft:block.iron_trapdoor.close block @a ~ ~ ~ 1 1.2
particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.02 10
tellraw @s {"text":"📫 Mailbox placed! Mail bats will leave letters here while you're offline","color":"gold"}
