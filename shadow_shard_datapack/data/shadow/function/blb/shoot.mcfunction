$scoreboard players set #n blb $(n)
$scoreboard players set #sp blb $(spread)
$scoreboard players set #dm blb $(dmg)
$data modify storage shadow:blb s.item set value "$(item)"
scoreboard players operation #own blb = @s shadow.id
execute anchored eyes positioned ^ ^-0.1 ^0.6 run function shadow:blb/muzzle
function shadow:blb/spawn_loop
