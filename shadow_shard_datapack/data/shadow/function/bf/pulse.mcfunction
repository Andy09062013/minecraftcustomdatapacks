tag @s add bf.me
scoreboard players operation #o bf = @s shadow.id
execute if score @s bf.t matches 1 as @a[distance=..4] if function shadow:bf/ally run function shadow:bf/buff1
execute if score @s bf.t matches 2 as @a[distance=..5] if function shadow:bf/ally run function shadow:bf/buff2
execute if score @s bf.t matches 3 as @a[distance=..6] if function shadow:bf/ally run function shadow:bf/buff3
execute if score @s bf.t matches 4 as @a[distance=..7] if function shadow:bf/ally run function shadow:bf/buff4
execute if score @s bf.t matches 5 as @a[distance=..8] if function shadow:bf/ally run function shadow:bf/buff5
tag @s remove bf.me
playsound minecraft:block.note_block.didgeridoo player @a ~ ~ ~ 0.6 0.6
