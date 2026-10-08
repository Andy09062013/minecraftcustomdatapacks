scoreboard players set #k lc 0
execute if score #pl lc matches 1 store result score @s lc.slot run random value 0..40
execute if score #pl lc matches 0 store result score @s lc.slot run random value 0..5
function shadow:lc/pick_step
