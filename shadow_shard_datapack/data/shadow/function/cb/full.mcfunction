$data modify storage shadow:cb give set value {id:"$(id)",name:"$(name)"}
summon minecraft:item_display ~ ~ ~ {Tags:["cb.tmp"]}
loot replace entity @e[type=minecraft:item_display,tag=cb.tmp,limit=1] contents loot shadow:give/capture_ball
$item modify entity @e[type=minecraft:item_display,tag=cb.tmp,limit=1] contents [{"function":"minecraft:set_components","components":{"minecraft:item_name":{"text":"Capture Ball ($(name))","color":"#ffd25a"},"minecraft:lore":[{"text":"Holds a $(name)","color":"gold","italic":false},{"text":"Throw it to let it out","color":"gray","italic":false}],"minecraft:custom_model_data":{"strings":["capture_ball_full"]},"minecraft:enchantment_glint_override":true}},{"function":"minecraft:set_custom_data","tag":{cb_full:1b}}]
data modify entity @e[type=minecraft:item_display,tag=cb.tmp,limit=1] item.components."minecraft:custom_data".cb_mob set from storage shadow:cb m
execute if entity @a[tag=cb.me] run function shadow:cb/hand_over
execute unless entity @a[tag=cb.me] run function shadow:cb/drop_tmp
kill @e[type=minecraft:item_display,tag=cb.tmp]
$title @a[tag=cb.me] actionbar {"text":"Caught a $(name)!","color":"gold","bold":true}
