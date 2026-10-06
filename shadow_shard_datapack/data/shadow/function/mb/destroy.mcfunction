scoreboard players operation #v2 mb = @s mb.v
execute as @e[tag=mb.part,distance=..2.5] if score @s shadow.id = #me mb if score @s mb.v = #v2 mb run kill @s
kill @s
