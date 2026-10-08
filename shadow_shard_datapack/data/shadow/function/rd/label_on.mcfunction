scoreboard players operation #id2 rd = @s rd.id
execute as @e[type=minecraft:text_display,tag=rd.txt,distance=..1.5] if score @s rd.id = #id2 rd run function shadow:rd/label_set with storage shadow:radio
