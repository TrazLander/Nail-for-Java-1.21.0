scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=199,y=336,z=298,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=199,y=336,z=298,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[x=199,y=336,z=298,scores={Regenerate=..-1}] 199 336 298 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},x=199,y=336,z=298,dx=0,dy=0,dz=0]

execute as @p[scores={Regenerate=18},x=199,y=336,z=298,dx=0,dy=0,dz=0] run clone 218 23 2169 221 24 2174 198 338 297

execute as @p[scores={Regenerate=18},x=199,y=336,z=298,dx=0,dy=0,dz=0] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},x=199,y=336,z=298,dx=0,dy=0,dz=0] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},x=199,y=336,z=298,dx=0,dy=0,dz=0] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 199 339 299 199 339 299 redstone_block
execute as @p[scores={Regenerate=20},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 199 339 299 199 339 299 air

execute as @p[scores={Regenerate=22},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 200 339 299 200 339 299 redstone_block
execute as @p[scores={Regenerate=22},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 200 339 299 200 339 299 air

execute as @p[scores={Regenerate=24},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 198 339 299 198 339 299 redstone_block
execute as @p[scores={Regenerate=24},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 198 339 299 198 339 299 air

execute as @p[scores={Regenerate=26},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 201 339 299 201 339 299 redstone_block
execute as @p[scores={Regenerate=26},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 201 339 299 201 339 299 air

execute as @p[scores={Regenerate=28},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 199 339 300 199 339 300 redstone_block
execute as @p[scores={Regenerate=28},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 199 339 300 199 339 300 air

execute as @p[scores={Regenerate=30},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 200 339 300 200 339 300 redstone_block
execute as @p[scores={Regenerate=30},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 200 339 300 200 339 300 air

execute as @p[scores={Regenerate=32},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 198 339 300 198 339 300 redstone_block
execute as @p[scores={Regenerate=32},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 198 339 300 198 339 300 air

execute as @p[scores={Regenerate=34},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 201 339 300 201 339 300 redstone_block
execute as @p[scores={Regenerate=34},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 201 339 300 201 339 300 air

scoreboard players operation @p[scores={Regenerate=35},x=199,y=336,z=298,dx=0,dy=0,dz=0] DefenderHandicap = fake! DefenderHandicap
# update sign for defender handicap
execute as @p[scores={DefenderHandicap=1}] run clone 177 125 2164 181 131 2164 193 384 286
scoreboard players reset @a DefenderHandicap

execute as @p[scores={Regenerate=36..},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 198 338 297 201 339 302 air
execute as @p[scores={Regenerate=36..},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 183 64 2167 183 64 2167 stone replace redstone_block
execute as @p[scores={Regenerate=36..},x=199,y=336,z=298,dx=0,dy=0,dz=0] run fill 183 64 2169 183 64 2169 redstone_block replace stone
execute as @p[scores={Regenerate=36..},x=199,y=336,z=298,dx=0,dy=0,dz=0] run scoreboard objectives remove Regenerate