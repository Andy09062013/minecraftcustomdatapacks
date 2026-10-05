scoreboard players add @s shadow.fxt 1
execute store result storage shadow:fx r double 0.9 run scoreboard players get @s shadow.fxt
execute if score @s shadow.fxt matches ..14 run function shadow:fx_ring with storage shadow:fx
execute if score @s shadow.fxt matches ..12 run particle minecraft:dragon_breath ~ ~1 ~ 0.4 4 0.4 0.05 40 force
execute if score @s shadow.fxt matches ..12 run particle minecraft:reverse_portal ~ ~3 ~ 0.5 3 0.5 0.3 40 force
execute if score @s shadow.fxt matches 4..20 run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1.5 0.5 1.5 0.08 15 force
execute if score @s shadow.fxt matches 6 run particle minecraft:explosion_emitter ~ ~6 ~ 1.5 0.5 1.5 0 3 force
execute if score @s shadow.fxt matches 6 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 4 0.4
execute if score @s shadow.fxt matches 24.. run kill @s
