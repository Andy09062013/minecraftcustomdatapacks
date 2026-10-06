scoreboard players operation #d ebow.hp = @s ebow.hp
scoreboard players operation #d ebow.hp -= #cur ebow.hp
execute store result storage shadow:ebow d.v double 0.001 run scoreboard players get #d ebow.hp
function shadow:ebow/rot with storage shadow:ebow d
