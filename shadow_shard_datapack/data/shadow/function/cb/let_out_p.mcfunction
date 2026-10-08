tag @s remove cb.held
scoreboard players operation #me cb = @s shadow.id
function shadow:cb/free
title @s actionbar {"text":"You were let out","color":"green"}
