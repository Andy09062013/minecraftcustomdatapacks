execute unless entity @s[tag=shadow.mbinit] run function shadow:mb_init
execute on passengers if entity @s[type=minecraft:player] run tag @s add shadow.mbfix
execute if entity @a[tag=shadow.mbfix] run function shadow:mb_seat
scoreboard players set #fw mb 0
scoreboard players set #bk mb 0
scoreboard players set #lt mb 0
scoreboard players set #rt mb 0
execute on passengers on passengers if entity @s[type=minecraft:player] run function shadow:mb_input
scoreboard players add @s mb.s 0
execute unless predicate shadow:mb_water run return run function shadow:mb_dry
execute if score #fw mb matches 1 run scoreboard players add @s mb.s 30
execute if score #bk mb matches 1 run scoreboard players remove @s mb.s 40
execute if score #fw mb matches 0 if score #bk mb matches 0 run scoreboard players operation @s mb.s *= #95 mb
execute if score #fw mb matches 0 if score #bk mb matches 0 run scoreboard players operation @s mb.s /= #100 mb
execute if score @s mb.s matches 901.. run scoreboard players set @s mb.s 900
execute if score @s mb.s matches ..-301 run scoreboard players set @s mb.s -300
execute if score #lt mb matches 1 run function shadow:mb_turn_left
execute if score #rt mb matches 1 run function shadow:mb_turn_right
execute if score @s mb.s matches -20..20 run return 0
function shadow:mb_push
execute if score @s mb.s matches 200.. rotated as @s rotated ~ 0 run function shadow:mb_fx
