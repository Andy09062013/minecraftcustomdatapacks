# flip the Orbital Strike crater on or off for the whole server
execute store success score #gt orb unless score #nogrief orb matches 1
execute if score #gt orb matches 1 run scoreboard players set #nogrief orb 1
execute if score #gt orb matches 0 run scoreboard players set #nogrief orb 0
execute if score #nogrief orb matches 1 run tellraw @a [{text:"[Shadow] ",color:"dark_purple"},{text:"Orbital Strike griefing is now ",color:"gray"},{text:"OFF",color:"green",bold:true},{text:" (no crater, damage still works)",color:"gray"}]
execute if score #nogrief orb matches 0 run tellraw @a [{text:"[Shadow] ",color:"dark_purple"},{text:"Orbital Strike griefing is now ",color:"gray"},{text:"ON",color:"red",bold:true},{text:" (it digs a crater)",color:"gray"}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
