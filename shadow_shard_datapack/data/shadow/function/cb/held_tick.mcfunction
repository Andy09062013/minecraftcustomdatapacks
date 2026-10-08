scoreboard players remove @s cb.t 1
scoreboard players operation #by cb = @s cb.by
tag @a remove cb.me
execute as @a if score @s shadow.id = #by cb run tag @s add cb.me
execute unless entity @a[tag=cb.me] run return run function shadow:cb/escape
execute if entity @a[tag=cb.me,scores={shadow.hp=..0}] run return run function shadow:cb/escape
scoreboard players operation #me cb = @s shadow.id
execute if score @s cb.jmp matches 1.. run function shadow:cb/mash
scoreboard players set @s cb.jmp 0
execute if score @s cb.j matches 25.. run return run function shadow:cb/escape
execute if score @s cb.t matches ..0 run return run function shadow:cb/escape
execute at @a[tag=cb.me,limit=1] rotated ~ 0 positioned ^ ^2.2 ^-1.5 run tp @s ~ ~ ~
scoreboard players set @s shadow.stun 40
effect give @s minecraft:resistance 2 4 true
effect give @s minecraft:invisibility 2 0 true
scoreboard players operation #b cb = @s cb.j
function shadow:cb/bar_held
