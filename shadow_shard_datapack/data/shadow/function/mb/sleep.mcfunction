advancement revoke @s only shadow:mb_sleep
execute if items entity @s container.* *[custom_data~{shadow_mailbox:1b}] run return 0
execute if items entity @s weapon.offhand *[custom_data~{shadow_mailbox:1b}] run return 0
execute if items entity @s player.cursor *[custom_data~{shadow_mailbox:1b}] run return 0
loot give @s loot shadow:give/mailbox
tellraw @s [{"text":"📫 You got a Mailbox! ","color":"gold"},{"text":"Place it within 25 blocks of your bed. Mail bats leave letters in it while you're offline","color":"gray"}]
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 0.8
