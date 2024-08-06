scoreboard objectives add reset dummy
scoreboard players remove @a reset 1
scoreboard players add @a[x=-1,y=192,z=440,dx=0,dy=0,dz=0] reset 2
execute as @p[x=-1,y=192,z=440,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={reset=..-1}] reset
tp @p[y=192,x=-1,z=376,scores={reset=..-1}] -1 192 440 ~ ~
gamemode adventure @a[scores={reset=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=440]

execute as @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run clone 218 44 2169 221 45 2171 -2 194 439

execute as @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run scoreboard players add @e KILLALL 0
execute as @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run scoreboard players set @a KILLALL 1
execute as @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run tp @e[scores={KILLALL=0}] ~ ~-300 ~

execute as @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill -1 195 441 -1 195 441 redstone_block
execute as @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill -1 195 441 -1 195 441 air

execute as @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 0 195 441 0 195 441 redstone_block
execute as @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 0 195 441 0 195 441 air

execute as @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill -2 195 441 -2 195 441 redstone_block
execute as @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill -2 195 441 -2 195 441 air

execute as @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 1 195 441 1 195 441 redstone_block
execute as @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 1 195 441 1 195 441 air

execute as @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 87 2 2162 219 158 2240 redstone_block
execute as @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 87 2 2162 219 158 2240 air

execute as @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 87 2 2162 219 158 2240 redstone_block
execute as @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 87 2 2162 219 158 2240 air

execute as @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 87 2 2162 219 158 2240 redstone_block
execute as @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 87 2 2162 219 158 2240 air

execute as @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 87 2 2162 219 158 2240 redstone_block
execute as @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 87 2 2162 219 158 2240 air

scoreboard players operation @p[scores={reset=35},dz=0,dx=0,dy=0,y=192,x=-1,z=440] MapMode = fake! MapMode
# clear leave team in tourney mode
execute as @p[scores={MapMode=1}] run fill -2 218 435 1 222 436 stone_bricks
# clear leave team in tourney mode
execute as @p[scores={MapMode=1}] run fill -2 220 434 1 220 434 air
scoreboard players reset @a MapMode

execute as @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill -2 194 439 1 195 441 air
execute as @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 183 64 2173 183 64 2173 stone replace redstone_block
execute as @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run scoreboard objectives remove KILLALL

# TRIGGER FULL MAP RESET
execute as @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run fill 177 1 2161 177 164 2175 redstone_block replace orange_wool

execute as @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=440] run scoreboard objectives remove reset