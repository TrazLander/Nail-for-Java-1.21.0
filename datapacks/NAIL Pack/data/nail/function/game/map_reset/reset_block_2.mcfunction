scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=-1,y=192,z=120,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=-1,y=192,z=120,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[y=192,x=-1,z=56,scores={Regenerate=..-1}] -1 192 120 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=120]

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run clone 217 9 2169 221 10 2174 -3 194 119

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -1 195 121 -1 195 121 redstone_block
execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -1 195 121 -1 195 121 air

execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 0 195 121 0 195 121 redstone_block
execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 0 195 121 0 195 121 air

execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -2 195 121 -2 195 121 redstone_block
execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -2 195 121 -2 195 121 air

execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 1 195 121 1 195 121 redstone_block
execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 1 195 121 1 195 121 air

execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -1 195 122 -1 195 122 redstone_block
execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -1 195 122 -1 195 122 air

execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 0 195 122 0 195 122 redstone_block
execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 0 195 122 0 195 122 air

execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -2 195 122 -2 195 122 redstone_block
execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -2 195 122 -2 195 122 air

execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 1 195 122 1 195 122 redstone_block
execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 1 195 122 1 195 122 air

execute as @p[scores={Regenerate=36},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -3 195 121 -3 195 121 redstone_block
execute as @p[scores={Regenerate=36},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -3 195 121 -3 195 121 air

execute as @p[scores={Regenerate=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run scoreboard players set @e[x=18,y=200,z=110,dx=0,dy=0,dz=0] KillAll 1

execute as @p[scores={Regenerate=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill -3 194 119 1 195 124 air
execute as @p[scores={Regenerate=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 183 64 2163 183 64 2163 stone replace redstone_block
execute as @p[scores={Regenerate=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run fill 183 64 2165 183 64 2165 redstone_block replace stone
execute as @p[scores={Regenerate=38..},dz=0,dx=0,dy=0,y=192,x=-1,z=120] run scoreboard objectives remove Regenerate