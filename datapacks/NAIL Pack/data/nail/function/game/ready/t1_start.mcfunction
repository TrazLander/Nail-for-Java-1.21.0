scoreboard objectives remove T1StartTimer

# tp players that are currently in spectator mode
tp @a[gamemode=!adventure,scores={Teams=1}] 200.0 356 98 0 0
tp @a[gamemode=!adventure,scores={Teams=2}] 200.0 356 96 0 0

# confirm trough t1
scoreboard players set @a[x=197,y=356,z=98,dx=5,dy=2,dz=0,gamemode=!spectator] Teams 1

# gamemode effects clears spawnpoint
clear @a[scores={Teams=1}]
effect clear @a[scores={Teams=1}]
xp set @a[scores={Teams=1}] 0 levels
xp set @a[scores={Teams=1}] 0 points
effect give @a[scores={Teams=1}] minecraft:instant_health 2 10 true
effect give @a[scores={Teams=1}] minecraft:resistance 2 5 true
effect give @a[scores={Teams=1}] minecraft:saturation 1 255 true
gamemode survival @a[scores={Teams=1}]

# spawnpoint
spawnpoint @a[scores={Teams=1}] 200 362 479

# piston sound at floor
playsound block.piston.contract master @a 200.0 355 98 .9 .7

# remove from T1 trough: levers, signs, floor
fill 197 355 98 202 358 98 air

# remove from T2 trough: levers, signs
fill 197 356 96 202 358 96 air

# keep lever lights on
fill 195 356 98 195 356 98 minecraft:lever[face=ceiling,powered=true]
fill 195 356 96 195 356 96 minecraft:lever[face=ceiling,powered=true]

# run cobweb timers
loot spawn 185 36 2172 loot nail:chests/dispenser_1
scoreboard objectives add cobwebtimer dummy
scoreboard players set fake! cobwebtimer 1
# No handicap
execute if score fake! DefenderHandicap matches 0 run loot spawn 197 359.175 94.8 loot nail:chests/dispenser_1
execute if score fake! DefenderHandicap matches 0 run loot spawn 202 359.175 94.8 loot nail:chests/dispenser_2
# handicap
execute if score fake! DefenderHandicap matches 1 run loot spawn 197 360.375 94.8 loot nail:chests/dispenser_1
execute if score fake! DefenderHandicap matches 1 run loot spawn 202 360.375 94.8 loot nail:chests/dispenser_2

# start the t2 6-second countdown
scoreboard objectives add T2StartTimer dummy
scoreboard players set Tick! T2StartTimer 1
execute if score fake! DefenderHandicap matches 0 run scoreboard players set Second1! T2StartTimer 60
execute if score fake! DefenderHandicap matches 0 run scoreboard players set Second1! T2StartTimer 90

# queue system stuff
execute as @a[scores={Teams=1}] run scoreboard players operation @s QueueSet = @s Queue

# load game start
function nail:_load/load_2_during_game