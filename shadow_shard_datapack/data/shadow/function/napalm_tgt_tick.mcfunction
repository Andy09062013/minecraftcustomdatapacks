scoreboard players add @s shadow.nap 1
particle minecraft:dust{color:[1.0,0.1,0.1],scale:2.0} ~ ~1.5 ~ 0.1 1.5 0.1 0 4 force
execute if score @s shadow.nap matches 1 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 2 0.7
execute if score @s shadow.nap matches 20 positioned ^ ^80 ^-60 run function shadow:napalm_jet_spawn
execute if score @s shadow.nap matches 20 run playsound minecraft:item.elytra.flying master @a ~ ~ ~ 6 1.4
execute if score @s shadow.nap matches 20 run playsound minecraft:entity.phantom.swoop master @a ~ ~ ~ 4 0.5
execute if score @s shadow.nap matches 58 run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 4 0.6
execute if score @s shadow.nap matches 58 run playsound minecraft:entity.firework_rocket.large_blast_far master @a ~ ~ ~ 4 0.5
execute if score @s shadow.nap matches 140.. run kill @s
