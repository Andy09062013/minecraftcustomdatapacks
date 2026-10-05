# warning
execute if score #ot orb matches ..84 run particle minecraft:dust{color:[0.6,0.9,1.0],scale:2.0} ~ ~20 ~ 0.15 20 0.15 0 25 force
execute if score #ot orb matches ..84 run particle minecraft:end_rod ~ ~0.3 ~ 0.5 0.1 0.5 0.02 2 force
execute if score #ot orb matches ..92 run title @a[distance=..96,tag=!orb.in] actionbar {"text":"⚠ ORBITAL STRIKE INBOUND ⚠","color":"red","bold":true}
scoreboard players operation #w orb = #ot orb
scoreboard players operation #w orb %= #20 orb
execute if score #ot orb matches ..84 if score #w orb matches 0 run playsound minecraft:block.note_block.bit master @a[distance=..96] ~ ~ ~ 6 0.5
# beam from the sky
execute if score #ot orb matches 85 positioned ~ ~160 ~ run function shadow:orb/rbeam_spawn
execute if score #ot orb matches 86 run function shadow:orb/rbeam_grow
execute if score #ot orb matches 85 run playsound minecraft:entity.warden.sonic_boom master @a[distance=..320] ~ ~ ~ 20 0.5
execute if score #ot orb matches 85 run playsound minecraft:item.trident.thunder master @a[distance=..320] ~ ~ ~ 20 0.5
execute if score #ot orb matches 85..93 run particle minecraft:end_rod ~ ~40 ~ 1.5 40 1.5 0.1 60 force
# impact
execute if score #ot orb matches 93 run function shadow:orb/blast_spawn
execute if score #ot orb matches 94 run function shadow:orb/blast_grow
execute if score #ot orb matches 93 run function shadow:orb/impact
execute if score #ot orb matches 93..123 run function shadow:orb/wave
execute if score #ot orb matches 110 run function shadow:orb/blast_fade
execute if score #ot orb matches 110 run function shadow:orb/rbeam_fade
execute if score #ot orb matches 94..150 run particle minecraft:campfire_signal_smoke ~ ~1 ~ 12 2 12 0.02 6 force
