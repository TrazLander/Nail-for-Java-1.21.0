scoreboard objectives add reset dummy
scoreboard players remove @a reset 1
scoreboard players add @a[x=-1,y=192,z=120,dx=0,dy=0,dz=0] reset 2
execute @p[x=-1,y=192,z=120,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players reset @a[scores={reset=..-1}] reset
tp @p[y=192,x=-1,z=56,scores={reset=..-1}] -1 192 120 ~ ~
gamemode adventure @a[scores={reset=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=120]

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ clone 217 9 2169 221 10 2174 -3 194 119

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ scoreboard players add @e KILLALL 0
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ scoreboard players set @a KILLALL 1
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ tp @e[scores={KILLALL=0}] ~ ~-300 ~

execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -1 195 121 -1 195 121 redstone_block 0
execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -1 195 121 -1 195 121 air

execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 0 195 121 0 195 121 redstone_block 0
execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 0 195 121 0 195 121 air

execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -2 195 121 -2 195 121 redstone_block 0
execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -2 195 121 -2 195 121 air

execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 1 195 121 1 195 121 redstone_block 0
execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 1 195 121 1 195 121 air

execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -1 195 122 -1 195 122 redstone_block 0
execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -1 195 122 -1 195 122 air

execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 0 195 122 0 195 122 redstone_block 0
execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 0 195 122 0 195 122 air

execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -2 195 122 -2 195 122 redstone_block 0
execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -2 195 122 -2 195 122 air

execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 1 195 122 1 195 122 redstone_block 0
execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 1 195 122 1 195 122 air

execute @p[scores={reset=36},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -3 195 121 -3 195 121 redstone_block 0
execute @p[scores={reset=36},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -3 195 121 -3 195 121 air

execute @p[scores={reset=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ scoreboard players set @e[x=18,y=200,z=110,dx=0,dy=0,dz=0] KILLALL 1

execute @p[scores={reset=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill -3 194 119 1 195 124 air
execute @p[scores={reset=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 183 64 2163 183 64 2163 stone 0 replace redstone_block 0
execute @p[scores={reset=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ fill 183 64 2165 183 64 2165 redstone_block 0 replace stone 0
execute @p[scores={reset=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] ~ ~ ~ scoreboard objectives remove reset