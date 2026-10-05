execute if score #oprep orb matches 1.. run return run function shadow:orb/prep
scoreboard players add #ot orb 1
execute if score #ot orb matches 150 as @a[tag=orb.in] run function shadow:orb/leave
execute if score #ot orb matches 150 run bossbar set shadow:orb_charge visible false
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s run function shadow:orb/real
execute if score #ot orb matches ..149 run function shadow:orb/scene
execute if score #ot orb matches 230.. run function shadow:orb/end
