particle minecraft:explosion_emitter ~ ~ ~ 2 0.5 2 0 8 force
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:end_rod ~ ~1 ~ 0 0 0 1.2 150 force
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1.5 200 force
particle minecraft:dust{color:[0.6,0.2,1.0],scale:4.0} ~ ~1 ~ 3 2 3 0 300 force
particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.6 150 force
playsound shadow:super_slam player @a ~ ~ ~ 3 1
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 8 0.5
playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 8 0.6
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 3 0.8
summon minecraft:marker ~ ~ ~ {Tags:["shadow.fx"]}
execute as @e[tag=shadow.mytarget] run damage @s 200 minecraft:player_explosion by @a[tag=shadow.slammer,limit=1]
execute as @e[type=!#shadow:not_living,tag=!shadow.slammer,tag=!shadow.mytarget,distance=..4] run damage @s 60 minecraft:player_explosion by @a[tag=shadow.slammer,limit=1]
execute as @e[type=!#shadow:not_living,tag=!shadow.slammer,tag=!shadow.mytarget,distance=4..9] run damage @s 25 minecraft:player_explosion by @a[tag=shadow.slammer,limit=1]
