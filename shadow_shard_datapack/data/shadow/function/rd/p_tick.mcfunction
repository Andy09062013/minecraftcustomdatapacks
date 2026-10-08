execute if score @s rp.s matches 7.. run scoreboard players set @s rp.s 1
tag @s add rp.play
scoreboard players remove @s rp.t 1
execute if score @s rp.t matches 1.. run return run particle minecraft:note ~ ~2.1 ~ 0.2 0.1 0.2 1 0
scoreboard players operation #s rd = @s rp.s
execute if score #s rd matches 1 run playsound shadow:radio.port1 record @a[distance=..48] ~ ~ ~ 2 1
execute if score #s rd matches 2 run playsound shadow:radio.port2 record @a[distance=..48] ~ ~ ~ 2 1
execute if score #s rd matches 3 run playsound shadow:radio.port3 record @a[distance=..48] ~ ~ ~ 2 1
execute if score #s rd matches 4 run playsound shadow:radio.port4 record @a[distance=..48] ~ ~ ~ 2 1
execute if score #s rd matches 5 run playsound shadow:radio.port5 record @a[distance=..48] ~ ~ ~ 2 1
execute if score #s rd matches 6 run playsound shadow:radio.port6 record @a[distance=..48] ~ ~ ~ 2 1
function shadow:rd/song_len
scoreboard players operation @s rp.t = #len rd
function shadow:rd/p_title with storage shadow:radio
