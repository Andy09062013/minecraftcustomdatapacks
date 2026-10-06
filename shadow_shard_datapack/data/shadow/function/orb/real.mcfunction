# warning on the ground
execute if score #ot orb matches ..199 run particle minecraft:dust{color:[0.6,0.9,1.0],scale:2.0} ~ ~20 ~ 0.15 20 0.15 0 25 force
execute if score #ot orb matches ..199 run particle minecraft:end_rod ~ ~0.3 ~ 0.5 0.1 0.5 0.02 2 force
execute if score #ot orb matches ..209 run title @a[distance=..96,tag=!orb.in] actionbar {"text":"⚠ ORBITAL STRIKE INBOUND ⚠","color":"red","bold":true}
scoreboard players operation #w orb = #ot orb
scoreboard players operation #w orb %= #20 orb
execute if score #ot orb matches ..199 if score #w orb matches 0 run playsound minecraft:block.note_block.bit master @a[distance=..96] ~ ~ ~ 6 0.5
# beam from the cannon down to the ground
execute if score #ot orb matches 200 run function shadow:orb/beam_at with storage shadow:orb hh
execute if score #ot orb matches 201 run function shadow:orb/rbeam_grow with storage shadow:orb hh
execute if score #ot orb matches 200 run playsound minecraft:entity.warden.sonic_boom master @a[distance=..320] ~ ~ ~ 20 0.5
execute if score #ot orb matches 200 run playsound minecraft:item.trident.thunder master @a[distance=..320] ~ ~ ~ 20 0.5
execute if score #ot orb matches 200..210 run particle minecraft:end_rod ~ ~50 ~ 2 50 2 0.1 80 force
# impact: white light over a 50x50 area, 500 damage over 5 seconds
execute if score #ot orb matches 210 run function shadow:orb/blast_spawn
execute if score #ot orb matches 211 run function shadow:orb/blast_grow
execute if score #ot orb matches 210 run function shadow:orb/impact
execute if score #ot orb matches 212 run function shadow:orb/fire
execute if score #ot orb matches 226..316 run function shadow:orb/dot_try
execute if score #ot orb matches 210..245 run function shadow:orb/wave
execute if score #ot orb matches 300 run function shadow:orb/blast_fade
execute if score #ot orb matches 300 run function shadow:orb/rbeam_fade with storage shadow:orb hh
execute if score #ot orb matches 211..340 run particle minecraft:campfire_signal_smoke ~ ~1 ~ 14 2 14 0.02 8 force
