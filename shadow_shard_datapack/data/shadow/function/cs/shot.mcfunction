# camera path: wide orbit, push in, low angle, shake, pull back
execute if score #t cs.t matches 1..30 run scoreboard players remove #r cs.t 250
execute if score #t cs.t matches 1..30 run scoreboard players remove #h cs.t 125
execute if score #t cs.t matches 1..30 run tp @s ~ ~ ~ ~4 0
execute if score #t cs.t matches 31..40 run scoreboard players remove #r cs.t 30
execute if score #t cs.t matches 31..40 run scoreboard players remove #h cs.t 20
execute if score #t cs.t matches 31..40 run tp @s ~ ~ ~ ~3 0
execute if score #t cs.t matches 41..90 run scoreboard players remove #r cs.t 13
execute if score #t cs.t matches 41..90 run scoreboard players remove #h cs.t 5
execute if score #t cs.t matches 41..90 run tp @s ~ ~ ~ ~1 0
execute if score #t cs.t matches 91 run scoreboard players set #r cs.t 1100
execute if score #t cs.t matches 91 run scoreboard players set #h cs.t 20
execute if score #t cs.t matches 91 run scoreboard players operation #my cs.t = #yaw0 cs.t
execute if score #t cs.t matches 91 run scoreboard players add #my cs.t 180
execute if score #t cs.t matches 91 store result storage shadow:cs my.y int 1 run scoreboard players get #my cs.t
execute if score #t cs.t matches 91 run function shadow:cs/moon_yaw with storage shadow:cs my
execute if score #t cs.t matches 91..115 run tp @s ~ ~ ~ ~0.6 0
execute if score #t cs.t matches 116 run scoreboard players set #r cs.t 650
execute if score #t cs.t matches 116 run scoreboard players set #h cs.t 250
execute if score #t cs.t matches 126..260 run scoreboard players add #r cs.t 9
execute if score #t cs.t matches 126..260 run scoreboard players add #h cs.t 6
execute if score #t cs.t matches 126..260 run tp @s ~ ~ ~ ~1.3 0
execute store result storage shadow:cs cam.r double 0.01 run scoreboard players get #r cs.t
execute store result storage shadow:cs cam.h double 0.01 run scoreboard players get #h cs.t
data modify storage shadow:cs cam.jx set value 0.0d
data modify storage shadow:cs cam.jy set value 0.0d
data modify storage shadow:cs cam.jz set value 0.0d
execute if score #t cs.t matches 116..130 run function shadow:cs/shake
function shadow:cs/cam with storage shadow:cs cam
# effects
execute if score #t cs.t matches 1..90 run function shadow:cs/fx_build
execute if score #t cs.t matches 91..115 run function shadow:cs/fx_charge
execute if score #t cs.t matches 116 run function shadow:cs/fx_boom
execute if score #t cs.t matches 116..135 run function shadow:cs/fx_wave
execute if score #t cs.t matches 117..260 run function shadow:cs/fx_after
execute if score #t cs.t matches 126 run function shadow:cs/fx_title
execute if score #t cs.t matches 248 run effect give @a[tag=cs.in] minecraft:blindness 2 0 true
execute if score #t cs.t matches 1 run function shadow:cs/fx_open
execute if score #t cs.t matches 5 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 14 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 22 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 29 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 35 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 38 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 62 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 84 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 41..115 run function shadow:cs/bar
execute if score #t cs.t matches 91 rotated ~ 0 positioned ^ ^60 ^-3 run function shadow:cs/sword_spawn
execute if score #t cs.t matches 118 run function shadow:cs/text_grow
execute if score #t cs.t matches 136..240 run function shadow:cs/meteor_try
execute if score #t cs.t matches 2 run function shadow:cs/moon_grow
execute if score #t cs.t matches 2 run playsound minecraft:entity.ender_dragon.growl master @a[tag=cs.in] ~ ~ ~ 3 0.5
execute if score #t cs.t matches 41 run function shadow:cs/sword_ring
execute if score #t cs.t matches 41..88 run function shadow:cs/pillar
function shadow:cs/pillar_tick
function shadow:cs/rune_tick
execute if score #t cs.t matches 41.. run function shadow:cs/sword_tick
execute if score #t cs.t matches 116 run function shadow:cs/moon_pulse
execute if score #t cs.t matches 122 run function shadow:cs/moon_settle
execute if score #t cs.t matches 116 run function shadow:cs/shock_spawn
execute if score #t cs.t matches 117 run function shadow:cs/shock_grow
execute if score #t cs.t matches 128 run function shadow:cs/shock_fade
execute if score #t cs.t matches 125 run function shadow:cs/sword_stab
execute if score #t cs.t matches 200 run title @a[tag=cs.in] times 0 3 12
execute if score #t cs.t matches 200 run title @a[tag=cs.in] title {"text":"\uE000\uE000\uE000","font":"shadow:flash","color":"#ff5500"}
execute if score #t cs.t matches 200 run playsound minecraft:entity.lightning_bolt.thunder master @a[tag=cs.in] ~ ~ ~ 3 0.5
execute if score #t cs.t matches 200 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 206 run function shadow:cs/bolt_rand
execute if score #t cs.t matches 215 run function shadow:cs/bolt_rand
