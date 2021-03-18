# tp out fix
tp @a[x=3,y=213,z=48,dx=0,dy=0,dz=0,gamemode=!spectator] 2 213 48 ~ ~

# tp players that are currently in spectator mode
tp @a[gamemode=!adventure,scores={Teams=1}] 0.0 212 48 0 0
tp @a[gamemode=!adventure,scores={Teams=2}] 0.0 212 46 0 0

# confirm trough t1
scoreboard players set @a[x=-3,y=212,z=48,dx=5,dy=2,dz=0,gamemode=!spectator] Teams 1

# gamemode effects clears spawnpoint
clear @a[scores={Teams=1}]
effect clear @a[scores={Teams=1}]
xp set @a[scores={Teams=1}] 0 levels
xp set @a[scores={Teams=1}] 0 points
effect give @a[scores={Teams=1}] minecraft:instant_health 2 10 true
effect give @a[scores={Teams=1}] minecraft:resistance 2 5 true
effect give @a[scores={Teams=1}] minecraft:saturation 1 255 true
spawnpoint @a[scores={Teams=1}] 0 218 429
gamemode survival @a[scores={Teams=1}]

# piston sound at floor
playsound block.piston.contract master @a 0.0 211 48 .9 .7

# floor remove
fill -3 211 48 2 211 48 air

# set gamestatus to duringgame
scoreboard players set fake! gamestatus 1

# TODO: turn off server mode countdown clock?

# keep lever lights on
fill -5 212 48 -5 212 48 minecraft:lever[face=ceiling,powered=true]
fill -5 212 46 -5 212 46 minecraft:lever[face=ceiling,powered=true]

# remove levers and signs from both troughs
fill -3 212 48 2 214 48 air
fill -3 212 46 2 214 46 air

# run cobweb timers
clone 183 36 2172 183 36 2172 185 36 2172
clone 183 36 2174 183 36 2174 185 36 2174
fill 185 36 2173 185 36 2173 minecraft:redstone_block
fill 185 36 2173 185 36 2173 minecraft:stone