title @s times 0 30 10
title @s title {"text":"💣","color":"red"}
title @s subtitle {"text":"there was a pipebomb in the letter","color":"red"}
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 1 1.6
execute anchored eyes positioned ^ ^ ^0.6 run function shadow:pipe_letter_boom
execute anchored eyes positioned ^ ^ ^0.6 run function shadow:pipe_grief
