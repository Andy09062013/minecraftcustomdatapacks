execute positioned ~ ~-1 ~ if entity @a[tag=shadow.axeowner,distance=..1.8] run return run function shadow:axe_give
execute facing entity @a[tag=shadow.axeowner,limit=1] eyes run tp @s ^ ^ ^1.1
