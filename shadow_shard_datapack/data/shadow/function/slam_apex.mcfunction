effect clear @s minecraft:levitation
scoreboard players set @s shadow.slam 2
scoreboard players set @s shadow.slamt 0
function shadow:slam_align
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 2 0.6
