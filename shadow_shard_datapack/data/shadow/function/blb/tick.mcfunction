scoreboard players operation #own blb = @s blb.o
tag @a remove blb.own
execute as @a if score @s shadow.id = #own blb run tag @s add blb.own
execute unless function shadow:blb/step run return 0
execute unless function shadow:blb/step run return 0
execute unless function shadow:blb/step run return 0
execute if score @s blb.s matches 36.. run kill @s
