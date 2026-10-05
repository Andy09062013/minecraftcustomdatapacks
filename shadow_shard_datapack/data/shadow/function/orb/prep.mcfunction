scoreboard players add #oprep orb 1
execute if score #oprep orb matches 400.. run return run function shadow:orb/end
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s unless loaded ~ ~ ~ run return 0
scoreboard players set #oprep orb 0
scoreboard players set #or orb 3400
scoreboard players set #oh orb -1000
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s positioned ~ ~120 ~ run function shadow:orb/cannon
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s run summon minecraft:marker ~ ~60 ~ {Tags:["orb.e","orb.look"]}
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s run summon minecraft:item_display ~ ~110 ~34 {Tags:["orb.e","orb.cam"],teleport_duration:2}
bossbar add shadow:orb_charge {"text":"🛰 ORBITAL CANNON CHARGING","color":"aqua","bold":true}
bossbar set shadow:orb_charge color blue
bossbar set shadow:orb_charge style notched_20
bossbar set shadow:orb_charge max 80
bossbar set shadow:orb_charge value 0
bossbar set shadow:orb_charge visible false
execute as @a unless entity @s[tag=cs.in] run function shadow:orb/enter
