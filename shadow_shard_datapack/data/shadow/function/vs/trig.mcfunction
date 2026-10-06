scoreboard players operation #tv vs = @s scythe
scoreboard players set @s scythe 0
scoreboard players enable @s scythe
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_vscythe:1b}] run return run tellraw @s {"text":"Hold the Void Scythe in your main hand first","color":"red"}
execute if score #tv vs matches 1 run return run function shadow:vs/menu
function shadow:vs/read
function shadow:vs/costs
execute store result score @s vs.c run clear @s *[custom_data~{shadow_vcrystal:1b}] 0
execute if score #tv vs matches 2 run return run function shadow:vs/up {o:"vs.d",c:"#cd",m:5,n:"Damage"}
execute if score #tv vs matches 3 run return run function shadow:vs/up {o:"vs.s",c:"#cs",m:4,n:"Attack Speed"}
execute if score #tv vs matches 4 run return run function shadow:vs/up {o:"vs.w",c:"#cw",m:5,n:"Sweep"}
execute if score #tv vs matches 5 run return run function shadow:vs/up_path {p:1}
execute if score #tv vs matches 6 run return run function shadow:vs/up_path {p:2}
execute if score #tv vs matches 7 run return run function shadow:vs/reset_ask
execute if score #tv vs matches 8 run return run function shadow:vs/reset
