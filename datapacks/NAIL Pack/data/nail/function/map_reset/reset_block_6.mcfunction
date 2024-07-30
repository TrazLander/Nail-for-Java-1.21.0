scoreboard objectives add reset dummy
scoreboard players remove @a reset 1
scoreboard players add @a[x=-1,y=192,z=376,dx=0,dy=0,dz=0] reset 2
execute @p[x=-1,y=192,z=376,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players reset @a[scores={reset=..-1}] reset
tp @p[y=192,x=-1,z=312,scores={reset=..-1}] -1 192 376 ~ ~
gamemode adventure @a[scores={reset=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=376]

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ clone 218 37 2169 221 38 2174 -2 194 375

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ scoreboard players add @e KILLALL 0
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ scoreboard players set @a KILLALL 1
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ tp @e[scores={KILLALL=0}] ~ ~-300 ~

execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill -1 195 377 -1 195 377 redstone_block 0
execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill -1 195 377 -1 195 377 air

execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 0 195 377 0 195 377 redstone_block 0
execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 0 195 377 0 195 377 air

execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill -2 195 377 -2 195 377 redstone_block 0
execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill -2 195 377 -2 195 377 air

execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 1 195 377 1 195 377 redstone_block 0
execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 1 195 377 1 195 377 air

execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill -1 195 378 -1 195 378 redstone_block 0
execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill -1 195 378 -1 195 378 air

execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 0 195 378 0 195 378 redstone_block 0
execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 0 195 378 0 195 378 air

execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill -2 195 378 -2 195 378 redstone_block 0
execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill -2 195 378 -2 195 378 air

execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 1 195 378 1 195 378 redstone_block 0
execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 1 195 378 1 195 378 air

execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill -2 194 375 1 195 380 air
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 183 64 2171 183 64 2171 stone 0 replace redstone_block 0
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ fill 183 64 2173 183 64 2173 redstone_block 0 replace stone 0
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=376] ~ ~ ~ scoreboard objectives remove reset