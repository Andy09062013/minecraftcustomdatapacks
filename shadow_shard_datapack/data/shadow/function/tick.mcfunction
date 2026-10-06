execute as @a[scores={shadow.timer=1..}] at @s run function shadow:active
execute as @a[scores={shadow.lev=1..}] run function shadow:lev_tick
execute as @e[type=ender_pearl,tag=!shadow.checked] run function shadow:pearl_check
execute as @a[scores={shadow.fly=1..}] run function shadow:fly_tick
clear @a[tag=!shadow.launch] *[custom_data~{shadow_dummy:1b}]
execute as @e[type=#minecraft:arrows,tag=!shadow.seen] at @s run function shadow:arrow_check
execute as @e[type=minecraft:block_display,tag=shadow.tntvis] at @s run function shadow:tnt_track
execute as @a unless score @s shadow.id matches 1.. store result score @s shadow.id run scoreboard players add #next shadow.id 1
clear @a *[custom_data~{shadow_blood_arrow:1b}]
execute as @e[type=minecraft:item] if items entity @s contents *[custom_data~{shadow_blood_arrow:1b}] run kill @s
execute as @e[type=minecraft:block_display,tag=shadow.bloodvis] at @s run function shadow:blood_track
execute as @a[tag=shadow.healing,scores={shadow.heal=..0}] run function shadow:heal_end
execute as @a[scores={shadow.heal=1..}] run function shadow:heal_tick
scoreboard players remove @a[scores={shadow.reload=1..}] shadow.reload 1
execute as @a unless score @s shadow.reload matches 1.. if items entity @s weapon.mainhand minecraft:crossbow[charged_projectiles=[]] unless items entity @s weapon.mainhand *[custom_data~{shadow_sniper:1b}] unless items entity @s weapon.mainhand *[custom_data~{shadow_heavy:1b}] if items entity @s weapon.offhand minecraft:tnt run function shadow:charge_tnt
execute as @a unless score @s shadow.reload matches 1.. if items entity @s weapon.mainhand minecraft:crossbow[charged_projectiles=[]] if items entity @s weapon.mainhand *[custom_data~{shadow_blood:1b}] unless items entity @s weapon.offhand minecraft:firework_rocket unless items entity @s weapon.offhand minecraft:tnt run function shadow:charge_blood
execute as @e[type=#minecraft:arrows,tag=shadow.snipe] run function shadow:snipe_tick
execute as @e[type=minecraft:firework_rocket,tag=!shadow.seen] at @s run function shadow:rocket_check
execute as @e[type=minecraft:block_display,tag=shadow.calvis] at @s run function shadow:caliber_track
scoreboard players add @a shadow.mcd 0
execute as @a[scores={shadow.mcd=1..}] run function shadow:mallet_cd
execute as @e[scores={shadow.stun=1..}] at @s run function shadow:stun_tick
scoreboard players add @a shadow.slam 0
execute as @a[scores={shadow.slam=1..}] at @s run function shadow:slam_tick
execute as @e[type=minecraft:marker,tag=shadow.fx] at @s run function shadow:fx_tick
execute as @e[type=minecraft:block_display,tag=shadow.hungvis] at @s run function shadow:hungry_track
execute as @a[tag=shadow.feeding,scores={shadow.feed=..0}] run function shadow:feed_end
execute as @a[scores={shadow.feed=1..}] run function shadow:feed_tick
execute as @e[type=#minecraft:arrows,tag=shadow.plasma_max] at @s run function shadow:plasma_trail
execute as @e[type=minecraft:block_display,tag=shadow.plasmavis] at @s run function shadow:plasma_track
execute as @a[tag=!shadow.pc_tick,scores={shadow.pc=1..}] run scoreboard players set @s shadow.pc 0
tag @a[tag=shadow.pc_tick] remove shadow.pc_tick
execute as @a[tag=shadow.frost_restore] run function shadow:frost_restore
execute as @a at @s run function shadow:frost_player
execute as @e[type=minecraft:snowball,tag=shadow.iceproj] at @s run function shadow:frost_proj_tick
execute as @e[type=minecraft:block_display,tag=shadow.icevis] at @s run function shadow:frost_track
execute as @e[type=minecraft:block_display,tag=shadow.icecase] run function shadow:icecase_tick
execute as @e[scores={shadow.fdecay=1..}] run function shadow:frost_decay
execute as @a at @s run function shadow:bers_tick
execute as @e[type=minecraft:item] if items entity @s contents *[custom_data~{shadow_bheart:1b}] run kill @s
execute as @a unless score @s shadow.fuel matches -1.. run scoreboard players set @s shadow.fuel 200
execute as @a[tag=!shadow.flame_tick] run function shadow:flame_regen
tag @a[tag=shadow.flame_tick] remove shadow.flame_tick
execute as @a[scores={shadow.burn=1..}] at @s run function shadow:burn_tick
execute as @e[type=minecraft:item,tag=shadow.gren] at @s run function shadow:grenade_tick
scoreboard players add #t shadow.gfuse 1
execute if score #t shadow.gfuse matches 10.. run function shadow:crucifix_aura
execute as @a if items entity @s weapon.mainhand *[custom_data~{shadow_evo:1b}] at @s run function shadow:evo_tick
execute as @a[scores={evo.end=1..}] run function shadow:evo_bar_tick
scoreboard players set @a evo.dd 0
tag @a remove evo.pvp
execute as @a if items entity @s container.* *[custom_data~{shadow_heavy_raw:1b}] run function shadow:heavy_verify
execute as @e[type=minecraft:item_display,tag=shadow.axe] at @s run function shadow:axe_tick
execute as @a[scores={shadow.exect=1..}] at @s run function shadow:exec_tick
execute as @e[scores={shadow.mark=1..}] at @s run function shadow:mark_tick
scoreboard players remove @e[scores={shadow.axecd=1..}] shadow.axecd 1
execute as @a if items entity @s weapon.mainhand minecraft:written_book[custom_data~{shadow_letter:1b}] at @s run function shadow:letter_seal
execute as @e[type=minecraft:bat,tag=shadow.mailbat] at @s run function shadow:mailbat_tick
execute as @a[gamemode=!spectator] if items entity @s container.* *[custom_data~{shadow_satchel:1b}] at @s run function shadow:sat_tick
execute as @a[gamemode=!spectator] unless items entity @s container.* *[custom_data~{shadow_satchel:1b}] if items entity @s weapon.offhand *[custom_data~{shadow_satchel:1b}] at @s run function shadow:sat_tick
kill @e[type=minecraft:item_display,tag=shadow.satbag]
execute as @a[tag=shadow.napalm_restore] run function shadow:napalm_restore
execute as @e[type=minecraft:marker,tag=shadow.naptgt] at @s run function shadow:napalm_tgt_tick
execute as @e[type=minecraft:block_display,tag=shadow.napmark] run function shadow:napalm_mark_tick
execute as @e[tag=shadow.jet] at @s run function shadow:napalm_jet_tick
execute as @e[type=minecraft:block_display,tag=shadow.napbomb] at @s run function shadow:napalm_bomb_tick
execute as @e[type=minecraft:block_display,tag=shadow.napfire] at @s run function shadow:napalm_fire_tick
scoreboard players remove @a[scores={ecl.use=1..}] ecl.use 1
execute as @a[scores={ecl.hit=1..}] at @s run function shadow:ecl_proc
scoreboard players set @a ecl.hit 0
tag @e[tag=ecl.cand] remove ecl.cand
execute as @a[scores={ecl.fl=1..}] run function shadow:ecl_flash_tick
execute as @a[scores={ecl.cap=1..}] run function shadow:ecl_cap_tick
execute as @a if items entity @s container.* *[custom_data~{shadow_light_raw:1b}] run function shadow:light_verify
execute as @a if items entity @s container.* *[custom_data~{shadow_eclipse_raw:1b}] run function shadow:ecl_verify
execute as @e[type=minecraft:item] if items entity @s contents *[custom_data~{shadow_shard:1b}] at @s if block ~ ~ ~ minecraft:void_air run function shadow:void_catch
execute as @e[tag=shadow.motorboat] at @s run function shadow:mb_tick
execute as @e[type=minecraft:item_display,tag=shadow.mbseat] unless function shadow:mb_has_rider run kill @s
execute as @e[type=minecraft:item_display,tag=shadow.mbseat] unless function shadow:mb_has_vehicle run kill @s
execute as @e[type=minecraft:marker,tag=shadow.mbmark] unless function shadow:mb_has_vehicle at @s run function shadow:mb_broken
scoreboard players add #upd mb.t 1
execute if score #upd mb.t matches 20.. as @a if function shadow:upd_need run function shadow:upd
execute if score #upd mb.t matches 20.. run scoreboard players set #upd mb.t 0
execute if score #run cs.t matches 1.. run function shadow:cs/tick
execute unless score #run cs.t matches 1.. as @a[tag=cs.in] run function shadow:cs/leave
execute as @a unless score @s cs.rv matches 2 run function shadow:recipes_unlock
execute if score #orun orb matches 1.. run function shadow:orb/tick
execute unless score #orun orb matches 1.. as @a[tag=orb.in] run function shadow:orb/leave
execute as @a if items entity @s container.* *[custom_data~{shadow_orbital_raw:1b}] run function shadow:orb/verify
execute as @a if items entity @s weapon.mainhand *[custom_data~{shadow_ebow:1b}] at @s run function shadow:ebow/hold
execute as @a unless items entity @s weapon.mainhand *[custom_data~{shadow_ebow:1b}] if items entity @s container.* *[custom_data~{shadow_ebow_ammo:1b}] run clear @s *[custom_data~{shadow_ebow_ammo:1b}]
execute as @a unless items entity @s weapon.mainhand *[custom_data~{shadow_ebow:1b}] if items entity @s weapon.offhand *[custom_data~{shadow_ebow_ammo:1b}] run item replace entity @s weapon.offhand with minecraft:air
execute as @e[type=minecraft:block_display,tag=shadow.lbowvis] at @s run function shadow:ebow/ltrack
execute as @e[type=minecraft:arrow,tag=shadow.vbow] at @s run function shadow:ebow/vtrail
execute as @e[scores={ebow.mk=1..}] at @s run function shadow:ebow/mark_tick
execute as @a[scores={ebow.u=1..}] unless score @s ebow.f matches 1 run function shadow:ebow/release
scoreboard players set @a ebow.f 0
execute as @a[tag=shadow.blb_restore] run function shadow:blb/restore
execute as @e[type=minecraft:item_display,tag=blb.p] at @s run function shadow:blb/tick
