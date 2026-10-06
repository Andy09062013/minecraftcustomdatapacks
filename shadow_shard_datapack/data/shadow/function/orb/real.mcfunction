# targeting reticle on the ground
execute if score #ot orb matches 1 run function shadow:orb/reticle_spawn
execute if score #ot orb matches 1..209 run function shadow:orb/reticle_tick
execute if score #ot orb matches 210 run kill @e[tag=orb.retA]
execute if score #ot orb matches 210 run kill @e[tag=orb.retB]
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
execute if score #ot orb matches 210 run function shadow:orb/disc_spawn
execute if score #ot orb matches 211 run function shadow:orb/disc_grow
execute if score #ot orb matches 226 run function shadow:orb/disc_fade
execute if score #ot orb matches 228..318 run function shadow:orb/dot_try
execute if score #ot orb matches 226 unless score #nogrief orb matches 1 run function shadow:orb/crater/l0
execute if score #ot orb matches 227 unless score #nogrief orb matches 1 run function shadow:orb/crater/l1
execute if score #ot orb matches 228 unless score #nogrief orb matches 1 run function shadow:orb/crater/l2
execute if score #ot orb matches 229 unless score #nogrief orb matches 1 run function shadow:orb/crater/l3
execute if score #ot orb matches 230 unless score #nogrief orb matches 1 run function shadow:orb/crater/l4
execute if score #ot orb matches 231 unless score #nogrief orb matches 1 run function shadow:orb/crater/l5
execute if score #ot orb matches 232 unless score #nogrief orb matches 1 run function shadow:orb/crater/l6
execute if score #ot orb matches 233 unless score #nogrief orb matches 1 run function shadow:orb/crater/l7
execute if score #ot orb matches 234 unless score #nogrief orb matches 1 run function shadow:orb/crater/l8
execute if score #ot orb matches 235 unless score #nogrief orb matches 1 run function shadow:orb/crater/l9
execute if score #ot orb matches 236 unless score #nogrief orb matches 1 run function shadow:orb/crater/l10
execute if score #ot orb matches 237 unless score #nogrief orb matches 1 run function shadow:orb/crater/l11
execute if score #ot orb matches 238 unless score #nogrief orb matches 1 run function shadow:orb/crater/l12
execute if score #ot orb matches 239 unless score #nogrief orb matches 1 run function shadow:orb/crater/l13
execute if score #ot orb matches 240 unless score #nogrief orb matches 1 run function shadow:orb/crater/l14
execute if score #ot orb matches 241 unless score #nogrief orb matches 1 run function shadow:orb/crater/l15
execute if score #ot orb matches 242 unless score #nogrief orb matches 1 run function shadow:orb/crater/l16
execute if score #ot orb matches 243 unless score #nogrief orb matches 1 run function shadow:orb/crater/l17
execute if score #ot orb matches 244 unless score #nogrief orb matches 1 run function shadow:orb/crater/l18
execute if score #ot orb matches 245 unless score #nogrief orb matches 1 run function shadow:orb/crater/l19
execute if score #ot orb matches 246 unless score #nogrief orb matches 1 run function shadow:orb/crater_floor
execute if score #ot orb matches 226..245 run particle minecraft:explosion_emitter ~ ~2 ~ 10 3 10 0 6 force
execute if score #ot orb matches 226..245 run particle minecraft:lava ~ ~3 ~ 12 2 12 0 40 force
execute if score #ot orb matches 226..245 run playsound minecraft:entity.generic.explode master @a[distance=..200] ~ ~ ~ 10 0.5
execute if score #ot orb matches 230..330 run function shadow:orb/mushroom
execute if score #ot orb matches 250..299 as @e[type=minecraft:marker,tag=orb.anchor,limit=1] at @s run function shadow:orb/leave_cannon
execute if score #ot orb matches 300 as @e[type=minecraft:marker,tag=orb.anchor,limit=1] at @s run function shadow:orb/warp_out
execute if score #ot orb matches 210..245 run function shadow:orb/wave
execute if score #ot orb matches 300 run function shadow:orb/blast_fade
execute if score #ot orb matches 300 run function shadow:orb/rbeam_fade with storage shadow:orb hh
execute if score #ot orb matches 211..340 run particle minecraft:campfire_signal_smoke ~ ~1 ~ 14 2 14 0.02 8 force
