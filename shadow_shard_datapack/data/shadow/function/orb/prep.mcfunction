scoreboard players add #oprep orb 1
execute if score #oprep orb matches 400.. run return run function shadow:orb/end
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s unless loaded ~ ~ ~ run return 0
scoreboard players set #oprep orb 0
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] store result score #ty orb run data get entity @s Pos[1]
scoreboard players set #H orb 180
scoreboard players operation #H orb -= #ty orb
execute if score #H orb matches ..44 run scoreboard players set #H orb 45
scoreboard players operation #B orb = #H orb
scoreboard players remove #B orb 32
scoreboard players operation #M orb = #B orb
scoreboard players operation #M orb /= #2 orb
execute store result storage shadow:orb hh.H int 1 run scoreboard players get #H orb
execute store result storage shadow:orb hh.B int 1 run scoreboard players get #B orb
execute store result storage shadow:orb hh.M int 1 run scoreboard players get #M orb
execute store result storage shadow:orb hh.L int 1 run scoreboard players get #B orb
scoreboard players set #or orb 5100
scoreboard players set #oh orb -1500
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s run function shadow:orb/place with storage shadow:orb hh
bossbar add shadow:orb_charge {"text":"🛰 ORBITAL CANNON CHARGING","color":"aqua","bold":true}
bossbar set shadow:orb_charge color blue
bossbar set shadow:orb_charge style notched_10
bossbar set shadow:orb_charge max 140
bossbar set shadow:orb_charge value 0
bossbar set shadow:orb_charge visible false
execute as @a unless entity @s[tag=cs.in] run function shadow:orb/enter
