scoreboard objectives add reset dummy
scoreboard players remove @a reset 1
scoreboard players add @a[x=-1,y=192,z=248,dx=0,dy=0,dz=0] reset 2
execute as @p[x=-1,y=192,z=248,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={reset=..-1}] reset
tp @p[y=192,x=-1,z=184,scores={reset=..-1}] -1 192 248 ~ ~
gamemode adventure @a[scores={reset=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=248]

execute as @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run clone 218 23 2169 221 24 2174 -2 194 247

execute as @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run scoreboard players add @e KILLALL 0
execute as @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run scoreboard players set @a KILLALL 1
execute as @p[scores={reset=18},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run tp @e[scores={KILLALL=0}] ~ ~-300 ~

execute as @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -1 195 249 -1 195 249 redstone_block
execute as @p[scores={reset=20},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -1 195 249 -1 195 249 air

execute as @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 0 195 249 0 195 249 redstone_block
execute as @p[scores={reset=22},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 0 195 249 0 195 249 air

execute as @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 195 249 -2 195 249 redstone_block
execute as @p[scores={reset=24},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 195 249 -2 195 249 air

execute as @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 1 195 249 1 195 249 redstone_block
execute as @p[scores={reset=26},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 1 195 249 1 195 249 air

execute as @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -1 195 250 -1 195 250 redstone_block
execute as @p[scores={reset=28},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -1 195 250 -1 195 250 air

execute as @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 0 195 250 0 195 250 redstone_block
execute as @p[scores={reset=30},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 0 195 250 0 195 250 air

execute as @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 195 250 -2 195 250 redstone_block
execute as @p[scores={reset=32},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 195 250 -2 195 250 air

execute as @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 1 195 250 1 195 250 redstone_block
execute as @p[scores={reset=34},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 1 195 250 1 195 250 air

scoreboard players operation @p[scores={reset=35},dz=0,dx=0,dy=0,y=192,x=-1,z=248] DefenderHandicap = fake! DefenderHandicap
# update sign for defender handicap
execute as @p[scores={DefenderHandicap=1}] run clone 177 125 2164 181 131 2164 -7 240 236
scoreboard players reset @a DefenderHandicap

execute as @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 194 247 1 195 252 air
execute as @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 183 64 2167 183 64 2167 stone replace redstone_block
execute as @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 183 64 2169 183 64 2169 redstone_block replace stone
execute as @p[scores={reset=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run scoreboard objectives remove reset