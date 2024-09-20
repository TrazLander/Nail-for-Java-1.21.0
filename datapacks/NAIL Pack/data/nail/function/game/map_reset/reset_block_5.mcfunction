scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=199,y=336,z=362,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=199,y=336,z=362,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[x=199,y=336,z=298,scores={Regenerate=..-1}] 199 336 362 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},x=199,y=336,z=362,dx=0,dy=0,dz=0]

execute as @p[scores={Regenerate=18},x=199,y=336,z=362,dx=0,dy=0,dz=0] run clone 218 30 2169 221 31 2174 198 338 361

execute as @p[scores={Regenerate=18},x=199,y=336,z=362,dx=0,dy=0,dz=0] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},x=199,y=336,z=362,dx=0,dy=0,dz=0] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},x=199,y=336,z=362,dx=0,dy=0,dz=0] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 199 339 363 199 339 363 redstone_block
execute as @p[scores={Regenerate=20},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 199 339 363 199 339 363 air

execute as @p[scores={Regenerate=22},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 200 339 363 200 339 363 redstone_block
execute as @p[scores={Regenerate=22},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 200 339 363 200 339 363 air

execute as @p[scores={Regenerate=24},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 198 339 363 198 339 363 redstone_block
execute as @p[scores={Regenerate=24},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 198 339 363 198 339 363 air

execute as @p[scores={Regenerate=26},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 201 339 363 201 339 363 redstone_block
execute as @p[scores={Regenerate=26},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 201 339 363 201 339 363 air

execute as @p[scores={Regenerate=28},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 199 339 364 199 339 364 redstone_block
execute as @p[scores={Regenerate=28},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 199 339 364 199 339 364 air

execute as @p[scores={Regenerate=30},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 200 339 364 200 339 364 redstone_block
execute as @p[scores={Regenerate=30},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 200 339 364 200 339 364 air

execute as @p[scores={Regenerate=32},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 198 339 364 198 339 364 redstone_block
execute as @p[scores={Regenerate=32},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 198 339 364 198 339 364 air

execute as @p[scores={Regenerate=34},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 201 339 364 201 339 364 redstone_block
execute as @p[scores={Regenerate=34},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 201 339 364 201 339 364 air

execute as @p[scores={Regenerate=36..},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 198 338 361 201 339 366 air
execute as @p[scores={Regenerate=36..},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 183 64 2169 183 64 2169 stone replace redstone_block
execute as @p[scores={Regenerate=36..},x=199,y=336,z=362,dx=0,dy=0,dz=0] run fill 183 64 2171 183 64 2171 redstone_block replace stone
execute as @p[scores={Regenerate=36..},x=199,y=336,z=362,dx=0,dy=0,dz=0] run scoreboard objectives remove Regenerate