$execute if entity @a[tag=lc.me] run damage @s $(d) minecraft:magic by @a[tag=lc.me,limit=1]
$execute unless entity @a[tag=lc.me] run damage @s $(d) minecraft:magic
