execute if items entity @s armor.head *[custom_data~{shadow_berserk:1b}] unless items entity @s armor.head *[custom_data~{bers_v:2}] run item modify entity @s armor.head shadow:bers_up_head
execute if items entity @s armor.chest *[custom_data~{shadow_berserk:1b}] unless items entity @s armor.chest *[custom_data~{bers_v:2}] run item modify entity @s armor.chest shadow:bers_up_chest
execute if items entity @s armor.legs *[custom_data~{shadow_berserk:1b}] unless items entity @s armor.legs *[custom_data~{bers_v:2}] run item modify entity @s armor.legs shadow:bers_up_legs
execute if items entity @s armor.feet *[custom_data~{shadow_berserk:1b}] unless items entity @s armor.feet *[custom_data~{bers_v:2}] run item modify entity @s armor.feet shadow:bers_up_feet
scoreboard players set #pieces shadow.maxhp 0
execute if items entity @s armor.head *[custom_data~{shadow_berserk:1b}] run scoreboard players add #pieces shadow.maxhp 1
execute if items entity @s armor.chest *[custom_data~{shadow_berserk:1b}] run scoreboard players add #pieces shadow.maxhp 1
execute if items entity @s armor.legs *[custom_data~{shadow_berserk:1b}] run scoreboard players add #pieces shadow.maxhp 1
execute if items entity @s armor.feet *[custom_data~{shadow_berserk:1b}] run scoreboard players add #pieces shadow.maxhp 1
execute store result score @s shadow.maxhp run attribute @s minecraft:max_health get
scoreboard players operation #half shadow.maxhp = @s shadow.maxhp
scoreboard players operation #half shadow.maxhp /= #2 shadow.maxhp
execute if score #pieces shadow.maxhp matches 1.. if score @s shadow.hp < #half shadow.maxhp run function shadow:bers_low
execute unless function shadow:bers_should_low run function shadow:bers_clear
execute if score #pieces shadow.maxhp matches 4 unless items entity @s weapon.offhand * run loot replace entity @s weapon.offhand loot shadow:berserker_heart
execute unless score #pieces shadow.maxhp matches 4 run clear @s *[custom_data~{shadow_bheart:1b}]
execute if score #pieces shadow.maxhp matches 4 if items entity @s container.* *[custom_data~{shadow_bheart:1b}] run clear @s *[custom_data~{shadow_bheart:1b}]
execute if score #pieces shadow.maxhp matches 1.. if score @s shadow.hp matches 1..6 unless score @s bs.cd matches 1.. at @s run function shadow:bers_mend
