$execute rotated $(a) 0 positioned ^ ^ ^9 run particle minecraft:flame ~ ~3 ~ 0.3 3 0.3 0.08 120 force
$execute rotated $(a) 0 positioned ^ ^ ^9 run particle minecraft:lava ~ ~0.5 ~ 0.5 0.5 0.5 0 20 force
$execute rotated $(a) 0 positioned ^ ^ ^9 run particle minecraft:explosion ~ ~0.5 ~ 0 0 0 0 1 force
$execute rotated $(a) 0 positioned ^ ^ ^9 run summon minecraft:block_display ~-0.5 ~ ~-0.5 {Tags:["cs.e","cs.pillar"],brightness:{sky:15,block:15},view_range:48f,block_state:{Name:"minecraft:fire"}}
playsound minecraft:item.firecharge.use master @a[tag=cs.in] ~ ~ ~ 4 0.6
playsound minecraft:entity.blaze.shoot master @a[tag=cs.in] ~ ~ ~ 4 0.7
