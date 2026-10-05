title @a[tag=cs.in] times 0 4 26
title @a[tag=cs.in] subtitle ""
title @a[tag=cs.in] title {"text":"","font":"shadow:flash","color":"black"}
function shadow:cs/time_dark
playsound minecraft:entity.elder_guardian.curse master @a[tag=cs.in] ~ ~ ~ 3 0.5
bossbar add shadow:cs_rage {"text":"RAGE AWAKENING","color":"dark_red","bold":true}
bossbar set shadow:cs_rage color red
bossbar set shadow:cs_rage style notched_20
bossbar set shadow:cs_rage max 75
bossbar set shadow:cs_rage value 0
bossbar set shadow:cs_rage visible false
