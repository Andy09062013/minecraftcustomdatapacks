summon minecraft:item_display ~ ~ ~ {Tags:["cb.tmp"]}
loot replace entity @e[type=minecraft:item_display,tag=cb.tmp,limit=1] contents loot shadow:give/capture_ball
$item modify entity @e[type=minecraft:item_display,tag=cb.tmp,limit=1] contents [{"function":"minecraft:set_components","components":{"minecraft:item_name":{"text":"Capture Ball ($(name))","color":"#ffd25a"},"minecraft:lore":[{"text":"Holds $(name)","color":"gold","italic":false},{"text":"Throw it to let them out","color":"gray","italic":false},{"text":"They can still mash their way out","color":"dark_gray","italic":false}],"minecraft:custom_model_data":{"strings":["capture_ball_full"]},"minecraft:enchantment_glint_override":true}},{"function":"minecraft:set_custom_data","tag":{cb_pball:1b,cb_pl:$(id)}}]
function shadow:cb/hand_over
kill @e[type=minecraft:item_display,tag=cb.tmp]
$title @a[tag=cb.me] actionbar {"text":"You captured $(name)!","color":"gold","bold":true}
