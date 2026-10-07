# flip Napalm Strike explosions and real fire on or off for the whole server
execute store success score #gt orb unless score #nonapgrief orb matches 1
execute if score #gt orb matches 1 run scoreboard players set #nonapgrief orb 1
execute if score #gt orb matches 0 run scoreboard players set #nonapgrief orb 0
execute if score #nonapgrief orb matches 1 run tellraw @a [{text:"[Shadow] ",color:"dark_purple"},{text:"Napalm Strike griefing is now ",color:"gray"},{text:"OFF",color:"green",bold:true},{text:" (fake fire, no block damage)",color:"gray"}]
execute if score #nonapgrief orb matches 0 run tellraw @a [{text:"[Shadow] ",color:"dark_purple"},{text:"Napalm Strike griefing is now ",color:"gray"},{text:"ON",color:"red",bold:true},{text:" (explosions and real fire)",color:"gray"}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
