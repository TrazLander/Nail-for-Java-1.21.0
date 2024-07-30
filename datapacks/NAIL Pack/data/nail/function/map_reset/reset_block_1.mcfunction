scoreboard objectives add reset dummy
scoreboard players remove @a reset 1
scoreboard players add @a[x=-1,y=192,z=56,dx=0,dy=0,dz=0] reset 2
execute @p[x=-1,y=192,z=56,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players reset @a[scores={reset=..-1}] reset
tp @p[y=192,x=-1,z=56,scores={reset=..-1}] -1 192 56 ~ ~
gamemode adventure @a[scores={reset=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=56]

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ clone 218 2 2169 221 3 2174 -2 194 55

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ scoreboard players add @e KILLALL 0
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ scoreboard players set @a KILLALL 1
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ tp @e[scores={KILLALL=0}] ~ ~-300 ~

execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill -1 195 57 -1 195 57 redstone_block 0
execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill -1 195 57 -1 195 57 air

execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 0 195 57 0 195 57 redstone_block 0
execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 0 195 57 0 195 57 air

execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill -2 195 57 -2 195 57 redstone_block 0
execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill -2 195 57 -2 195 57 air

execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 1 195 57 1 195 57 redstone_block 0
execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 1 195 57 1 195 57 air

execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill -1 195 58 -1 195 58 redstone_block 0
execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill -1 195 58 -1 195 58 air

execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 0 195 58 0 195 58 redstone_block 0
execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 0 195 58 0 195 58 air

execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill -2 195 58 -2 195 58 redstone_block 0
execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill -2 195 58 -2 195 58 air

execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 1 195 58 1 195 58 redstone_block 0
execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 1 195 58 1 195 58 air

scoreboard players operation @p[scores={reset=35},dz=0,dx=0,dy=0,y=192,x=-1,z=56] MapMode = fake! MapMode
# clear leave team in tourney mode
execute @p[scores={MapMode=1}] ~ ~ ~ fill -2 206 31 1 211 31 air
# clear signs
execute @p[scores={MapMode=3}] ~ ~ ~ fill -3 214 48 2 214 48 air
execute @p[scores={MapMode=3}] ~ ~ ~ fill -3 214 46 2 214 46 air
# clear lever
execute @p[scores={MapMode=3}] ~ ~ ~ fill -3 213 48 -3 213 48 air
execute @p[scores={MapMode=3}] ~ ~ ~ fill -3 213 46 -3 213 46 air
# ACTUALLY turn on the lever lamp
execute @p[scores={MapMode=3}] ~ ~ ~ fill -4 213 48 -4 213 48 lapis_block
execute @p[scores={MapMode=3}] ~ ~ ~ fill -4 213 46 -4 213 46 netherrack
# reset MapMode player
scoreboard players reset @a MapMode

execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill -2 194 55 1 195 60 air
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 183 64 2161 183 64 2161 stone 0 replace redstone_block 0
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ fill 183 64 2163 183 64 2163 redstone_block 0 replace stone 0
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=56] ~ ~ ~ scoreboard objectives remove reset