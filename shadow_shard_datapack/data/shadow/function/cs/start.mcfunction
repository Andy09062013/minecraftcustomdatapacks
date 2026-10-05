execute if score #run cs.t matches 1.. run return fail
execute if score #orun orb matches 1.. run return fail
scoreboard players set #run cs.t 1
scoreboard players set #t cs.t 0
scoreboard players set #csadd evo.v 200
scoreboard players set #r cs.t 1200
scoreboard players set #h cs.t 600
data modify storage shadow:cs cam set value {r:12.0d,h:6.0d,jx:0.0d,jy:0.0d,jz:0.0d}
tag @s add cs.hero
execute rotated ~ 0 run summon minecraft:marker ~ ~ ~ {Tags:["cs.e","cs.anchor"]}
execute rotated ~ 0 run tp @e[type=minecraft:marker,tag=cs.anchor,limit=1] ~ ~ ~ ~ 0
summon minecraft:armor_stand ~ ~ ~ {Tags:["cs.e","cs.actor"],Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4144959,Pose:{RightArm:[-20f,0f,10f],LeftArm:[-10f,0f,-10f]}}
execute rotated ~ 0 run tp @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] ~ ~ ~ ~ 0
loot replace entity @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] armor.head loot shadow:player_head
item replace entity @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] armor.feet from entity @s armor.feet
loot replace entity @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] weapon.mainhand loot shadow:evo/rage
function shadow:cs/mannequin
summon minecraft:item_display ~ ~6 ~12 {Tags:["cs.e","cs.cam"],teleport_duration:2}
execute as @a run function shadow:cs/enter
execute store result score #day cs.t run time query daytime
