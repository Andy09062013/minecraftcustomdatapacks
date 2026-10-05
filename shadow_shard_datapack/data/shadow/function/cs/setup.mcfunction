function shadow:cs/build
summon minecraft:marker ~ ~ ~ {Tags:["cs.e","cs.anchor"],Rotation:[0f,0f]}
summon minecraft:marker ~ ~1.1 ~1 {Tags:["cs.e","cs.look"]}
summon minecraft:armor_stand ~ ~ ~ {Tags:["cs.e","cs.actor"],Rotation:[0f,0f],Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4144959,Pose:{RightArm:[-20f,0f,10f],LeftArm:[-10f,0f,-10f]}}
loot replace entity @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] armor.head loot shadow:player_head
item replace entity @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[type=minecraft:armor_stand,tag=cs.actor,limit=1] armor.feet from entity @s armor.feet
function shadow:cs/mannequin
summon minecraft:item_display ~ ~1.02 ~1 {Tags:["cs.e","cs.anvsword"],brightness:{sky:15,block:15},item_display:"fixed",transformation:{left_rotation:[-0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0.3827f,0.9239f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
loot replace entity @e[type=minecraft:item_display,tag=cs.anvsword,limit=1] contents loot shadow:evo/tier5
summon minecraft:item_display ~ ~ ~ {Tags:["cs.e","cs.hammer"],Rotation:[0f,0f],item_display:"fixed"}
loot replace entity @e[type=minecraft:item_display,tag=cs.hammer,limit=1] contents loot shadow:give/mallet
function shadow:cs/hammer_up
summon minecraft:item_display ~-2.4 ~1.9 ~2.9 {Tags:["cs.e","cs.cam"],teleport_duration:2}
execute as @a run function shadow:cs/enter
