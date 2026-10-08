scoreboard players set #ok lc 0
$execute if items entity @s $(s) *[max_damage,!unbreakable] run scoreboard players set #ok lc 1
execute if score #ok lc matches 0 run return 0
$item modify entity @s $(s) shadow:leech_drain
$execute if items entity @s $(s) *[damage~{durability:{max:1}}] run function shadow:lc/break {s:"$(s)"}
