execute store result score #h shadow.dmg run data get entity @s Health 1
execute if score #h shadow.dmg > #dmg shadow.dmg run return run function shadow:holy_stun
particle minecraft:falling_dust{block_state:"minecraft:gold_block"} ~ ~1 ~ 0.3 0.6 0.3 0 60 force
particle minecraft:item{item:"minecraft:gold_nugget"} ~ ~1 ~ 0.2 0.4 0.2 0.15 30 force
playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1 1.5
execute if entity @s[type=minecraft:player] run return run damage @s 1000 minecraft:magic by @a[tag=shadow.hthrower,limit=1]
tp @s ~ -500 ~
kill @s
