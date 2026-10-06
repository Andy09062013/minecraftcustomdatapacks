execute unless entity @a[tag=shadow.lrecv] run return run function shadow:mb/drop_in
execute positioned ~ ~-1.2 ~ if entity @a[tag=shadow.lrecv,distance=..1.6] run return run function shadow:mail_deliver
execute unless entity @a[tag=shadow.lrecv,distance=..80] at @a[tag=shadow.lrecv,limit=1] run tp @s ~ ~24 ~
execute facing entity @a[tag=shadow.lrecv,limit=1] eyes run tp @s ^ ^ ^0.9 facing entity @a[tag=shadow.lrecv,limit=1] eyes
