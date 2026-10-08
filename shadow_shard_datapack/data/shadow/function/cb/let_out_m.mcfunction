$execute as @a[tag=cb.held] if score @s shadow.id matches $(id) run tag @s add cb.out
tp @a[tag=cb.out] ~ ~0.3 ~
execute as @a[tag=cb.out] at @s run function shadow:cb/let_out_p
tag @a remove cb.out
