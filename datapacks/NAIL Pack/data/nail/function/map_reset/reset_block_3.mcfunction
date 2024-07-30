scoreboard objectives add reset dummy
scoreboard players remove @a reset 1
scoreboard players add @a[x=-1,y=192,z=184,dx=0,dy=0,dz=0] reset 2
execute @p[x=-1,y=192,z=184,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players reset @a[scores={reset=..-1}] reset
tp @p[y=192,x=-1,z=120,scores={reset=..-1}] -1 192 184 ~ ~
gamemode adventure @a[scores={reset=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=184]

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ clone 218 16 2169 221 17 2174 -2 194 183

execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ scoreboard players add @e KILLALL 0
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ scoreboard players set @a KILLALL 1
execute @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ tp @e[scores={KILLALL=0}] ~ ~-300 ~

execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill -1 195 185 -1 195 185 redstone_block 0
execute @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill -1 195 185 -1 195 185 air

execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 0 195 185 0 195 185 redstone_block 0
execute @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 0 195 185 0 195 185 air

execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill -2 195 185 -2 195 185 redstone_block 0
execute @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill -2 195 185 -2 195 185 air

execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 1 195 185 1 195 185 redstone_block 0
execute @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 1 195 185 1 195 185 air

execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill -1 195 186 -1 195 186 redstone_block 0
execute @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill -1 195 186 -1 195 186 air

execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 0 195 186 0 195 186 redstone_block 0
execute @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 0 195 186 0 195 186 air

execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill -2 195 186 -2 195 186 redstone_block 0
execute @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill -2 195 186 -2 195 186 air

execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 1 195 186 1 195 186 redstone_block 0
execute @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 1 195 186 1 195 186 air

execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill -2 194 183 1 195 188 air
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 183 64 2165 183 64 2165 stone 0 replace redstone_block 0
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ fill 183 64 2167 183 64 2167 redstone_block 0 replace stone 0
execute @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=184] ~ ~ ~ scoreboard objectives remove reset