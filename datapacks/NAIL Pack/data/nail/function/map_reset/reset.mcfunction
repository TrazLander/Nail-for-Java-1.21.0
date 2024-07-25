# run - after game
scoreboard objectives remove RESEThidden
scoreboard objectives add RESEThidden dummy
fill 183 60 2161 183 60 2161 redstone_block 0 replace stone 0
scoreboard objectives remove RESET
scoreboard objectives add RESET dummy
scoreboard objectives setdisplay sidebar RESET
scoreboard players set Time RESET 30

# run - before game
scoreboard objectives remove RESEThidden
scoreboard objectives remove RESET
scoreboard objectives remove KILLALL

# tick
# 30 seconds to reset
scoreboard objectives remove KILLALL
scoreboard players test Time RESEThidden 20
scoreboard players reset Time RESEThidden
scoreboard players remove Time RESET 1
scoreboard players test Time RESET 0 0
fill 183 60 2163 183 60 2163 redstone_block 0 replace stone 0 # turns on next section
fill 183 60 2161 183 60 2161 stone 0 replace redstone_block 0 # turns off this ticking section
scoreboard objectives remove RESEThidden
scoreboard players set Resetting... RESET 0
scoreboard players reset Time RESET



# run - Reset Map
tp @e[type=!player] ~ ~-300 ~
scoreboard objectives add reset dummy
# triggers map generation
fill 183 64 2161 183 64 2161 redstone_block 0 replace stone     # triggers Reset Block 1
scoreboard objectives add KILLALL dummy
# stop re-entry
fill 164 4 2167 164 4 2168 obsidian
fill 164 4 2162 164 4 2163 obsidian
fill 152 4 2164 152 4 2166 obsidian
# set first reset person
tp @p[x=-1,y=192,z=56] -1 192 56 0 0
gamemode adventure @p[x=-1,y=192,z=56,dx=0,dy=0,dz=0]

scoreboard objectives add temp dummy
scoreboard players set @a temp 0
scoreboard players set @p[x=-1,y=192,z=56,dx=0,dy=0,dz=0,gamemode=adventure] temp 1
scoreboard players set @a[x=153,y=2,z=2161,dx=11,dy=4,dz=8] temp 1
spawnpoint @a[scores={temp=0..1}] 157 2 2165
tp @a[scores={temp=0}] 157 2 2165 -90 0
gamemode adventure @a[scores={temp=0}]

clear @a[scores={temp=0..1}]
effect give @a[scores={temp=0..1}] clear
xp -2147483648L @a[scores={temp=0..1}]
effect give @a[scores={temp=0..1}] minecraft:saturation 1000000 255 true
effect give @a[scores={temp=0..1}] minecraft:instant_health 2 10 true
effect give @a[scores={temp=0..1}] minecraft:resistance 100000 5 true
effect give @a[scores={temp=0..1}] minecraft:weakness 100000 5 true

scoreboard objectives remove temp
# add redundant Resetting... display
scoreboard objectives add RESET dummy
scoreboard objectives setdisplay sidebar RESET
scoreboard players set Resetting... RESET 0