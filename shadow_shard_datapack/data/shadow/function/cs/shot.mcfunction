# camera path: wide orbit, push in, low angle, shake, pull back
execute if score #t cs.t matches 1..40 run scoreboard players remove #r cs.t 8
execute if score #t cs.t matches 1..40 run scoreboard players remove #h cs.t 5
execute if score #t cs.t matches 1..40 run tp @s ~ ~ ~ ~3 0
execute if score #t cs.t matches 41..90 run scoreboard players remove #r cs.t 13
execute if score #t cs.t matches 41..90 run scoreboard players remove #h cs.t 5
execute if score #t cs.t matches 41..90 run tp @s ~ ~ ~ ~1 0
execute if score #t cs.t matches 91 run scoreboard players set #r cs.t 450
execute if score #t cs.t matches 91 run scoreboard players set #h cs.t 30
execute if score #t cs.t matches 91..115 run tp @s ~ ~ ~ ~0.6 0
execute if score #t cs.t matches 116 run scoreboard players set #r cs.t 650
execute if score #t cs.t matches 116 run scoreboard players set #h cs.t 250
execute if score #t cs.t matches 126..200 run scoreboard players add #r cs.t 12
execute if score #t cs.t matches 126..200 run scoreboard players add #h cs.t 8
execute if score #t cs.t matches 126..200 run tp @s ~ ~ ~ ~1.5 0
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
execute if score #t cs.t matches 117..200 run function shadow:cs/fx_after
execute if score #t cs.t matches 126 run function shadow:cs/fx_title
execute if score #t cs.t matches 188 run effect give @a[tag=cs.in] minecraft:blindness 2 0 true
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
execute if score #t cs.t matches 136..186 run function shadow:cs/meteor_try
