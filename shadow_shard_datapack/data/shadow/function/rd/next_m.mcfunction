stopsound @a[distance=..64] record shadow:radio.song1
stopsound @a[distance=..64] record shadow:radio.song2
stopsound @a[distance=..64] record shadow:radio.song3
stopsound @a[distance=..64] record shadow:radio.song4
stopsound @a[distance=..64] record shadow:radio.song5
stopsound @a[distance=..64] record shadow:radio.song6
scoreboard players add @s rd.s 1
execute if score @s rd.s matches 7.. run scoreboard players set @s rd.s 1
tag @s add rd.on
scoreboard players set @s rd.t 0
playsound minecraft:block.note_block.hat block @a ~ ~ ~ 1 1.6
