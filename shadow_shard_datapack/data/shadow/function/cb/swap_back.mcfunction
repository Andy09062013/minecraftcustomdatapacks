$execute as @a[tag=cb.me] if items entity @s container.* *[custom_data~{cb_pl:$(id)}] run function shadow:cb/swap_back_p {id:$(id)}
