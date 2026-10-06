scoreboard players set @s vs.acd 700
scoreboard players set @s vs.bt 100
tag @s add vs.inbat
summon minecraft:happy_ghast ~ ~ ~ {Tags:["vs.batg","vs.e","vs.gnew"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:0b}],equipment:{body:{id:"minecraft:black_harness",count:1}},attributes:[{id:"minecraft:scale",base:0.25},{id:"minecraft:flying_speed",base:0.16}]}
summon minecraft:bat ~ ~ ~ {Tags:["vs.batb","vs.e","vs.bnew"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:scale",base:2.0}]}
ride @s mount @e[type=minecraft:happy_ghast,tag=vs.gnew,limit=1]
ride @e[type=minecraft:bat,tag=vs.bnew,limit=1] mount @e[type=minecraft:happy_ghast,tag=vs.gnew,limit=1]
tag @e[tag=vs.gnew] remove vs.gnew
tag @e[tag=vs.bnew] remove vs.bnew
effect give @s minecraft:invisibility 6 0 true
attribute @s minecraft:armor modifier remove shadow:vs_bat
attribute @s minecraft:armor modifier add shadow:vs_bat -1 add_multiplied_total
attribute @s minecraft:armor_toughness modifier remove shadow:vs_bat
attribute @s minecraft:armor_toughness modifier add shadow:vs_bat -1 add_multiplied_total
particle minecraft:large_smoke ~ ~1 ~ 0.4 0.6 0.4 0.05 40 force
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.6 0.4 0.1 40 force
playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1.5 0.6
playsound minecraft:entity.phantom.ambient player @a ~ ~ ~ 1 0.8
