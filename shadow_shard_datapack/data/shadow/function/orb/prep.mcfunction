scoreboard players add #oprep orb 1
execute if score #oprep orb matches 400.. run return run function shadow:orb/end
execute in minecraft:the_end unless loaded 1999990 200 1999990 run return 0
execute in minecraft:the_end unless loaded 2000042 200 2000042 run return 0
execute in minecraft:the_end unless loaded 1999990 200 2000042 run return 0
execute in minecraft:the_end unless loaded 2000042 200 1999990 run return 0
scoreboard players set #oprep orb 0
execute in minecraft:the_end positioned 2000016.5 200 2000016.5 run function shadow:orb/stage
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s run summon minecraft:item_display ~20 ~30 ~20 {Tags:["orb.e","orb.cam","orb.rcam"],teleport_duration:2}
execute as @a[tag=orb.caster,limit=1] unless entity @s[tag=cs.in] run function shadow:orb/enter
