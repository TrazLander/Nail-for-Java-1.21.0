scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=-1,y=192,z=248,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=-1,y=192,z=248,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[y=192,x=-1,z=184,scores={Regenerate=..-1}] -1 192 248 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=248]

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run clone 218 23 2169 221 24 2174 -2 194 247

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -1 195 249 -1 195 249 redstone_block
execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -1 195 249 -1 195 249 air

execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 0 195 249 0 195 249 redstone_block
execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 0 195 249 0 195 249 air

execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 195 249 -2 195 249 redstone_block
execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 195 249 -2 195 249 air

execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 1 195 249 1 195 249 redstone_block
execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 1 195 249 1 195 249 air

execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -1 195 250 -1 195 250 redstone_block
execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -1 195 250 -1 195 250 air

execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 0 195 250 0 195 250 redstone_block
execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 0 195 250 0 195 250 air

execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 195 250 -2 195 250 redstone_block
execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 195 250 -2 195 250 air

execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 1 195 250 1 195 250 redstone_block
execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 1 195 250 1 195 250 air

scoreboard players operation @p[scores={Regenerate=35},dz=0,dx=0,dy=0,y=192,x=-1,z=248] DefenderHandicap = fake! DefenderHandicap
# update sign for defender handicap
execute as @p[scores={DefenderHandicap=1}] run clone 177 125 2164 181 131 2164 -7 240 236
scoreboard players reset @a DefenderHandicap

execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill -2 194 247 1 195 252 air
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 183 64 2167 183 64 2167 stone replace redstone_block
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run fill 183 64 2169 183 64 2169 redstone_block replace stone
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=248] run scoreboard objectives remove Regenerate