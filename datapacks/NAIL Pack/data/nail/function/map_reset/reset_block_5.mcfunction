scoreboard objectives add reset dummy
scoreboard players remove @a reset 1
scoreboard players add @a[x=-1,y=192,z=312,dx=0,dy=0,dz=0] reset 2
execute @p[x=-1,y=192,z=312,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players reset @a[scores={reset=..-1}] reset
tp @p[y=192,x=-1,z=248,scores={reset=..-1}] -1 192 312 ~ ~
gamemode adventure @a[scores={reset=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=312]

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ clone 218 30 2169 221 31 2174 -2 194 311

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ scoreboard players add @e KILLALL 0
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ scoreboard players set @a KILLALL 1
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ tp @e[scores={KILLALL=0}] ~ ~-300 ~

execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill -1 195 313 -1 195 313 redstone_block 0
execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill -1 195 313 -1 195 313 air

execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 0 195 313 0 195 313 redstone_block 0
execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 0 195 313 0 195 313 air

execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill -2 195 313 -2 195 313 redstone_block 0
execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill -2 195 313 -2 195 313 air

execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 1 195 313 1 195 313 redstone_block 0
execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 1 195 313 1 195 313 air

execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill -1 195 314 -1 195 314 redstone_block 0
execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill -1 195 314 -1 195 314 air

execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 0 195 314 0 195 314 redstone_block 0
execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 0 195 314 0 195 314 air

execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill -2 195 314 -2 195 314 redstone_block 0
execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill -2 195 314 -2 195 314 air

execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 1 195 314 1 195 314 redstone_block 0
execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 1 195 314 1 195 314 air

execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill -2 194 311 1 195 316 air
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 183 64 2169 183 64 2169 stone 0 replace redstone_block 0
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ fill 183 64 2171 183 64 2171 redstone_block 0 replace stone 0
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=312] ~ ~ ~ scoreboard objectives remove reset