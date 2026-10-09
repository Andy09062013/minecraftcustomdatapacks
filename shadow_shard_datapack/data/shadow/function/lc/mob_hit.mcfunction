advancement revoke @s only shadow:lc_mob_hit
# a leech arrow hurt something: find the mob it just hit (players are handled by the arrow tracker)
tag @a remove lc.me
tag @s add lc.me
scoreboard players operation #by lc = @s shadow.id
execute as @e[type=!#shadow:not_living,type=!minecraft:player,distance=..128,nbt={HurtTime:10s}] if function shadow:lc/hit_by_me at @s run function shadow:lc/stick
tag @a remove lc.me
