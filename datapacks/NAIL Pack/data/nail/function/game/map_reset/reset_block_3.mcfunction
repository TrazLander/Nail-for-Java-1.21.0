scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=199,y=336,z=234,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=199,y=336,z=234,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[x=199,y=336,z=170,scores={Regenerate=..-1}] 199 336 234 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},x=199,y=336,z=234,dx=0,dy=0,dz=0]

execute as @p[scores={Regenerate=18},x=199,y=336,z=234,dx=0,dy=0,dz=0] run clone 218 16 2169 221 17 2174 198 338 233

execute as @p[scores={Regenerate=18},x=199,y=336,z=234,dx=0,dy=0,dz=0] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},x=199,y=336,z=234,dx=0,dy=0,dz=0] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},x=199,y=336,z=234,dx=0,dy=0,dz=0] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 199 339 235 199 339 235 redstone_block
execute as @p[scores={Regenerate=20},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 199 339 235 199 339 235 air

execute as @p[scores={Regenerate=22},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 200 339 235 200 339 235 redstone_block
execute as @p[scores={Regenerate=22},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 200 339 235 200 339 235 air

execute as @p[scores={Regenerate=24},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 198 339 235 198 339 235 redstone_block
execute as @p[scores={Regenerate=24},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 198 339 235 198 339 235 air

execute as @p[scores={Regenerate=26},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 201 339 235 201 339 235 redstone_block
execute as @p[scores={Regenerate=26},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 201 339 235 201 339 235 air

execute as @p[scores={Regenerate=28},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 199 339 236 199 339 236 redstone_block
execute as @p[scores={Regenerate=28},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 199 339 236 199 339 236 air

execute as @p[scores={Regenerate=30},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 200 339 236 200 339 236 redstone_block
execute as @p[scores={Regenerate=30},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 200 339 236 200 339 236 air

execute as @p[scores={Regenerate=32},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 198 339 236 198 339 236 redstone_block
execute as @p[scores={Regenerate=32},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 198 339 236 198 339 236 air

execute as @p[scores={Regenerate=34},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 201 339 236 201 339 236 redstone_block
execute as @p[scores={Regenerate=34},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 201 339 236 201 339 236 air

execute as @p[scores={Regenerate=36..},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 198 338 233 201 339 238 air
execute as @p[scores={Regenerate=36..},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 183 64 2165 183 64 2165 stone replace redstone_block
execute as @p[scores={Regenerate=36..},x=199,y=336,z=234,dx=0,dy=0,dz=0] run fill 183 64 2167 183 64 2167 redstone_block replace stone
execute as @p[scores={Regenerate=36..},x=199,y=336,z=234,dx=0,dy=0,dz=0] run scoreboard objectives remove Regenerate