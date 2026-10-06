advancement revoke @s only shadow:vs_use
execute if score @s vs.use matches 1.. run return run scoreboard players set @s vs.use 3
scoreboard players set @s vs.use 3
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_vscythe:1b}] run return 0
execute if predicate shadow:sneaking run return run function shadow:vs/menu
execute if score @s vs.spin matches 1.. run return 0
execute if entity @s[tag=vs.inbat] run return 0
execute if entity @s[tag=vs.slam] run return 0
function shadow:vs/read
execute if score @s vs.p matches 2 unless score @s vs.acd matches 1.. unless entity @s[nbt={OnGround:1b}] run return run function shadow:vs/slam_start
execute if score @s vs.p matches 1 if score @s vs.l matches 4 unless score @s vs.acd matches 1.. unless predicate shadow:is_day unless entity @s[nbt={OnGround:1b}] run return run function shadow:vs/bat_start
execute if score @s vs.cd matches 1.. run return 0
execute if score @s vs.w matches 5 run return run function shadow:vs/spin_start
function shadow:vs/sweep
