execute store result score #now vs run time query gametime
scoreboard players remove @a[scores={vs.use=1..}] vs.use 1
scoreboard players remove @a[scores={vs.cd=1..}] vs.cd 1
scoreboard players remove @a[scores={vs.acd=1..}] vs.acd 1
scoreboard players remove @a[scores={vs.msg=1..}] vs.msg 1
scoreboard players remove @e[scores={vs.wcd=1..}] vs.wcd 1
scoreboard players enable @a scythe
execute as @a[scores={scythe=1..}] at @s run function shadow:vs/trig
execute as @a[scores={vs.dth=1..}] run function shadow:vs/died
execute as @a if items entity @s container.* *[custom_data~{shadow_vscythe_raw:1b}] run function shadow:vs/verify
# abilities
execute as @a[scores={vs.spin=1..}] at @s run function shadow:vs/spin_tick
execute as @a[tag=vs.slam] at @s run function shadow:vs/slam_tick
execute as @a[tag=vs.inbat] at @s run function shadow:vs/bat_tick
execute as @e[type=minecraft:marker,tag=vs.wave] at @s run function shadow:vs/wave_tick
execute as @e[type=minecraft:happy_ghast,tag=vs.batg] at @s unless entity @a[tag=vs.inbat,distance=..5] run function shadow:vs/bat_kill
execute as @e[type=minecraft:bat,tag=vs.batb] at @s unless entity @a[tag=vs.inbat,distance=..6] run kill @s
# stronger at night
execute as @a[tag=vs.nt] run function shadow:vs/night_off
execute unless predicate shadow:is_day as @a if items entity @s weapon.mainhand *[custom_data~{shadow_vscythe:1b,vs:{p:1}}] at @s run function shadow:vs/night_on
# crystals from hits
execute as @a[tag=vs.hp] at @s run function shadow:vs/hit_player
execute as @a[tag=vs.ha] at @s run function shadow:vs/hit_mob
# hud
scoreboard players operation #m vs = #now vs
scoreboard players operation #m vs %= #5 vs
execute if score #m vs matches 0 as @a if items entity @s weapon.mainhand *[custom_data~{shadow_vscythe:1b}] unless score @s vs.msg matches 1.. run function shadow:vs/hud
