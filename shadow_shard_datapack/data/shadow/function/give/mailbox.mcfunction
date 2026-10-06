execute if items entity @s container.* *[custom_data~{shadow_mailbox:1b}] run return run tellraw @s {"text":"You already have a Mailbox","color":"red"}
loot give @s loot shadow:give/mailbox
