bossbar set shadow:cs_rage visible true
bossbar set shadow:cs_rage players @a[tag=cs.in]
scoreboard players operation #bv cs.t = #t cs.t
scoreboard players remove #bv cs.t 40
execute store result bossbar shadow:cs_rage value run scoreboard players get #bv cs.t
execute if score #t cs.t matches 115 run bossbar set shadow:cs_rage name {"text":"🔥 RAGE UNLEASHED 🔥","color":"gold","bold":true}
