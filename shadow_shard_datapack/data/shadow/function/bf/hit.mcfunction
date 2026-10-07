advancement revoke @s only shadow:bf_hit
tag @s add bf.me
scoreboard players operation #o bf = @s shadow.id
execute as @a[tag=!bf.me,distance=..8,nbt={HurtTime:10s}] if function shadow:bf/by_me run function shadow:bf/toggle
tag @s remove bf.me
