item replace entity @s weapon.mainhand with minecraft:air
execute if items entity @s weapon.offhand * run function shadow:letter_attach
scoreboard players add #mail shadow.lmid 1
tag @e[type=minecraft:item_display,tag=shadow.ltmp] add shadow.mailitem
scoreboard players operation @e[type=minecraft:item_display,tag=shadow.ltmp] shadow.lmid = #mail shadow.lmid
tag @e[type=minecraft:item_display,tag=shadow.ltmp] remove shadow.ltmp
summon minecraft:bat ~ ~22 ~ {Tags:["shadow.mailbat","shadow.newbat"],NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,CustomName:{text:"Mail Bat",color:"gold"}}
scoreboard players operation @e[type=minecraft:bat,tag=shadow.newbat] shadow.lmid = #mail shadow.lmid
scoreboard players operation @e[type=minecraft:bat,tag=shadow.newbat] shadow.lfrom = @s shadow.id
scoreboard players operation @e[type=minecraft:bat,tag=shadow.newbat] shadow.lto = #lto shadow.ev
scoreboard players set @e[type=minecraft:bat,tag=shadow.newbat] shadow.lph 1
scoreboard players set @e[type=minecraft:bat,tag=shadow.newbat] shadow.lt 0
scoreboard players set @e[type=minecraft:bat,tag=shadow.newbat] shadow.lsub 0
tag @e[type=minecraft:bat,tag=shadow.newbat] remove shadow.newbat
tellraw @s [{"text":"✉ A mail bat is swooping down for your letter to ","color":"gold"},{"storage":"shadow:letter","nbt":"to","color":"white"}]
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
tag @a remove shadow.lto
