execute if score @s rd.s matches 14.. run scoreboard players set @s rd.s 1
scoreboard players remove @s rd.t 1
execute if score @s rd.t matches 1.. run return run particle minecraft:note ~ ~0.8 ~ 0.3 0.1 0.3 1 0
scoreboard players operation #s rd = @s rd.s
execute if score #s rd matches 1 run playsound shadow:radio.song1 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 2 run playsound shadow:radio.song2 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 3 run playsound shadow:radio.song3 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 4 run playsound shadow:radio.song4 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 5 run playsound shadow:radio.song5 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 6 run playsound shadow:radio.song6 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 7 run playsound shadow:radio.song7 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 8 run playsound shadow:radio.song8 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 9 run playsound shadow:radio.song9 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 10 run playsound shadow:radio.song10 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 11 run playsound shadow:radio.song11 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 12 run playsound shadow:radio.song12 record @a[distance=..64] ~ ~ ~ 2 1
execute if score #s rd matches 13 run playsound shadow:radio.song13 record @a[distance=..64] ~ ~ ~ 2 1
function shadow:rd/song_len
scoreboard players operation @s rd.t = #len rd
function shadow:rd/label_on
