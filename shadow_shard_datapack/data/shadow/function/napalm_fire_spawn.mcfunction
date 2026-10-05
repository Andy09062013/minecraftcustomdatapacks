execute align xyz if entity @e[type=minecraft:block_display,tag=shadow.napfire,distance=..0.1] run return 0
execute align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["shadow.napfire"],block_state:{Name:"minecraft:fire"},brightness:{sky:15,block:15}}
