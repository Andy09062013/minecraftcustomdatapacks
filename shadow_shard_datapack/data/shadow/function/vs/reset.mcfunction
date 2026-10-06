execute if score @s vs.c matches ..14 run return run function shadow:vs/poor
scoreboard players operation #n vs = @s vs.t
scoreboard players set #pay vs 15
function shadow:vs/pay
scoreboard players set @s vs.d 0
scoreboard players set @s vs.s 0
scoreboard players set @s vs.w 0
scoreboard players set @s vs.p 0
scoreboard players set @s vs.l 0
scoreboard players set @s vs.t 0
function shadow:vs/write
execute if score #n vs matches 1.. run loot give @s loot shadow:give/void_crystal_n
tellraw @s [{"text":"Scythe reset. Refunded ","color":"#9b4dff"},{"score":{"name":"#n","objective":"vs"},"color":"light_purple"},{"text":"◆","color":"light_purple"}]
playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 0.8
function shadow:vs/menu
