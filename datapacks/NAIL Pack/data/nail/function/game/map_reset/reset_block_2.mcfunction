scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=199,y=336,z=170,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=199,y=336,z=170,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[x=199,y=336,z=106,scores={Regenerate=..-1}] 199 336 170 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},x=199,y=336,z=170,dx=0,dy=0,dz=0]

execute as @p[scores={Regenerate=18},x=199,y=336,z=170,dx=0,dy=0,dz=0] run clone 217 9 2169 221 10 2174 197 338 169

execute as @p[scores={Regenerate=18},x=199,y=336,z=170,dx=0,dy=0,dz=0] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},x=199,y=336,z=170,dx=0,dy=0,dz=0] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},x=199,y=336,z=170,dx=0,dy=0,dz=0] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 199 339 171 199 339 171 redstone_block
execute as @p[scores={Regenerate=20},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 199 339 171 199 339 171 air

execute as @p[scores={Regenerate=22},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 200 339 171 200 339 171 redstone_block
execute as @p[scores={Regenerate=22},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 200 339 171 200 339 171 air

execute as @p[scores={Regenerate=24},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 198 339 171 198 339 171 redstone_block
execute as @p[scores={Regenerate=24},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 198 339 171 198 339 171 air

execute as @p[scores={Regenerate=26},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 201 339 171 201 339 171 redstone_block
execute as @p[scores={Regenerate=26},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 201 339 171 201 339 171 air

execute as @p[scores={Regenerate=28},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 199 339 172 199 339 172 redstone_block
execute as @p[scores={Regenerate=28},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 199 339 172 199 339 172 air

execute as @p[scores={Regenerate=30},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 200 339 172 200 339 172 redstone_block
execute as @p[scores={Regenerate=30},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 200 339 172 200 339 172 air

execute as @p[scores={Regenerate=32},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 198 339 172 198 339 172 redstone_block
execute as @p[scores={Regenerate=32},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 198 339 172 198 339 172 air

execute as @p[scores={Regenerate=34},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 201 339 172 201 339 172 redstone_block
execute as @p[scores={Regenerate=34},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 201 339 172 201 339 172 air

execute as @p[scores={Regenerate=36},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 197 339 171 197 339 171 redstone_block
execute as @p[scores={Regenerate=36},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 197 339 171 197 339 171 air

execute as @p[scores={Regenerate=38..},x=199,y=336,z=170,dx=0,dy=0,dz=0] run scoreboard players set @e[x=218,y=344,z=160,dx=0,dy=0,dz=0] KillAll 1

execute as @p[scores={Regenerate=38..},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 197 338 169 201 339 174 air
execute as @p[scores={Regenerate=38..},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 183 64 2163 183 64 2163 stone replace redstone_block
execute as @p[scores={Regenerate=38..},x=199,y=336,z=170,dx=0,dy=0,dz=0] run fill 183 64 2165 183 64 2165 redstone_block replace stone
execute as @p[scores={Regenerate=38..},x=199,y=336,z=170,dx=0,dy=0,dz=0] run scoreboard objectives remove Regenerate