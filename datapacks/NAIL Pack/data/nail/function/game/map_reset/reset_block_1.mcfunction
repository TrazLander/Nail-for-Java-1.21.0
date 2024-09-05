scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=-1,y=192,z=56,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=-1,y=192,z=56,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[y=192,x=-1,z=56,scores={Regenerate=..-1}] -1 192 56 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=56]

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run clone 218 2 2169 221 3 2174 -2 194 55

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill -1 195 57 -1 195 57 redstone_block
execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill -1 195 57 -1 195 57 air

execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 0 195 57 0 195 57 redstone_block
execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 0 195 57 0 195 57 air

execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill -2 195 57 -2 195 57 redstone_block
execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill -2 195 57 -2 195 57 air

execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 1 195 57 1 195 57 redstone_block
execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 1 195 57 1 195 57 air

execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill -1 195 58 -1 195 58 redstone_block
execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill -1 195 58 -1 195 58 air

execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 0 195 58 0 195 58 redstone_block
execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 0 195 58 0 195 58 air

execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill -2 195 58 -2 195 58 redstone_block
execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill -2 195 58 -2 195 58 air

execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 1 195 58 1 195 58 redstone_block
execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 1 195 58 1 195 58 air

scoreboard players operation @p[scores={Regenerate=35},dz=0,dx=0,dy=0,y=192,x=-1,z=56] MapMode = fake! MapMode
# clear leave team in tourney mode
execute as @p[scores={MapMode=1}] run fill -2 206 31 1 211 31 air
# clear signs
execute as @p[scores={MapMode=3}] run fill -3 214 48 2 214 48 air
execute as @p[scores={MapMode=3}] run fill -3 214 46 2 214 46 air
# clear lever
execute as @p[scores={MapMode=3}] run fill -3 213 48 -3 213 48 air
execute as @p[scores={MapMode=3}] run fill -3 213 46 -3 213 46 air
# ACTUALLY turn on the lever lamp
execute as @p[scores={MapMode=3}] run fill -4 213 48 -4 213 48 lapis_block
execute as @p[scores={MapMode=3}] run fill -4 213 46 -4 213 46 netherrack
# reset MapMode player
scoreboard players reset @a MapMode

execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill -2 194 55 1 195 60 air
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 183 64 2161 183 64 2161 stone replace redstone_block
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run fill 183 64 2163 183 64 2163 redstone_block replace stone
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=56] run scoreboard objectives remove Regenerate