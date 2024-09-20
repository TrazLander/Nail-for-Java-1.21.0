scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=199,y=336,z=426,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=199,y=336,z=426,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[x=199,y=336,z=362,scores={Regenerate=..-1}] 199 336 426 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},x=199,y=336,z=426,dx=0,dy=0,dz=0]

execute as @p[scores={Regenerate=18},x=199,y=336,z=426,dx=0,dy=0,dz=0] run clone 218 37 2169 221 38 2174 198 338 425

execute as @p[scores={Regenerate=18},x=199,y=336,z=426,dx=0,dy=0,dz=0] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},x=199,y=336,z=426,dx=0,dy=0,dz=0] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},x=199,y=336,z=426,dx=0,dy=0,dz=0] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 199 339 427 199 339 427 redstone_block
execute as @p[scores={Regenerate=20},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 199 339 427 199 339 427 air

execute as @p[scores={Regenerate=22},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 200 339 427 200 339 427 redstone_block
execute as @p[scores={Regenerate=22},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 200 339 427 200 339 427 air

execute as @p[scores={Regenerate=24},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 198 339 427 198 339 427 redstone_block
execute as @p[scores={Regenerate=24},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 198 339 427 198 339 427 air

execute as @p[scores={Regenerate=26},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 201 339 427 201 339 427 redstone_block
execute as @p[scores={Regenerate=26},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 201 339 427 201 339 427 air

execute as @p[scores={Regenerate=28},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 199 339 428 199 339 428 redstone_block
execute as @p[scores={Regenerate=28},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 199 339 428 199 339 428 air

execute as @p[scores={Regenerate=30},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 200 339 428 200 339 428 redstone_block
execute as @p[scores={Regenerate=30},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 200 339 428 200 339 428 air

execute as @p[scores={Regenerate=32},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 198 339 428 198 339 428 redstone_block
execute as @p[scores={Regenerate=32},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 198 339 428 198 339 428 air

execute as @p[scores={Regenerate=34},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 201 339 428 201 339 428 redstone_block
execute as @p[scores={Regenerate=34},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 201 339 428 201 339 428 air

execute as @p[scores={Regenerate=36..},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 198 338 425 201 339 430 air
execute as @p[scores={Regenerate=36..},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 183 64 2171 183 64 2171 stone replace redstone_block
execute as @p[scores={Regenerate=36..},x=199,y=336,z=426,dx=0,dy=0,dz=0] run fill 183 64 2173 183 64 2173 redstone_block replace stone
execute as @p[scores={Regenerate=36..},x=199,y=336,z=426,dx=0,dy=0,dz=0] run scoreboard objectives remove Regenerate