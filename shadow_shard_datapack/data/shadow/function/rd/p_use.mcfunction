advancement revoke @s only shadow:rp_use
execute if score @s rd.use matches 1.. run return run scoreboard players set @s rd.use 3
scoreboard players set @s rd.use 3
scoreboard players add @s rp.s 0
execute if score @s rp.s matches 0 run scoreboard players set @s rp.s 1
execute if predicate shadow:sneaking run return run function shadow:rd/p_toggle
function shadow:rd/p_stop_sounds
scoreboard players add @s rp.s 1
execute if score @s rp.s matches 15.. run scoreboard players set @s rp.s 1
scoreboard players set @s rp.on 1
scoreboard players set @s rp.t 0
playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.6
