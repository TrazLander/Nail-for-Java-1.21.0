scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=199,y=336,z=106,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=199,y=336,z=106,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[x=199,y=336,z=106,scores={Regenerate=..-1}] 199 336 106 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},x=199,y=336,z=106,dx=0,dy=0,dz=0]

execute as @p[scores={Regenerate=18},x=199,y=336,z=106,dx=0,dy=0,dz=0] run clone 218 2 2169 221 3 2174 198 338 105

execute as @p[scores={Regenerate=18},x=199,y=336,z=106,dx=0,dy=0,dz=0] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},x=199,y=336,z=106,dx=0,dy=0,dz=0] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},x=199,y=336,z=106,dx=0,dy=0,dz=0] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 199 339 107 199 339 107 redstone_block
execute as @p[scores={Regenerate=20},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 199 339 107 199 339 107 air

execute as @p[scores={Regenerate=22},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 200 339 107 200 339 107 redstone_block
execute as @p[scores={Regenerate=22},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 200 339 107 200 339 107 air

execute as @p[scores={Regenerate=24},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 198 339 107 198 339 107 redstone_block
execute as @p[scores={Regenerate=24},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 198 339 107 198 339 107 air

execute as @p[scores={Regenerate=26},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 201 339 107 201 339 107 redstone_block
execute as @p[scores={Regenerate=26},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 201 339 107 201 339 107 air

execute as @p[scores={Regenerate=28},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 199 339 108 199 339 108 redstone_block
execute as @p[scores={Regenerate=28},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 199 339 108 199 339 108 air

execute as @p[scores={Regenerate=30},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 200 339 108 200 339 108 redstone_block
execute as @p[scores={Regenerate=30},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 200 339 108 200 339 108 air

execute as @p[scores={Regenerate=32},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 198 339 108 198 339 108 redstone_block
execute as @p[scores={Regenerate=32},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 198 339 108 198 339 108 air

execute as @p[scores={Regenerate=34},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 201 339 108 201 339 108 redstone_block
execute as @p[scores={Regenerate=34},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 201 339 108 201 339 108 air

scoreboard players operation @p[scores={Regenerate=35},x=199,y=336,z=106,dx=0,dy=0,dz=0] MapMode = fake! MapMode
# clear leave team in tourney mode
execute as @p[scores={MapMode=1}] run fill 198 350 81 201 355 81 air
# clear signs
execute as @p[scores={MapMode=3}] run fill 197 358 98 202 358 98 air
execute as @p[scores={MapMode=3}] run fill 197 358 96 202 358 96 air
# clear lever
execute as @p[scores={MapMode=3}] run fill 197 357 98 197 357 98 air
execute as @p[scores={MapMode=3}] run fill 197 357 96 197 357 96 air
# ACTUALLY turn on the lever lamp
execute as @p[scores={MapMode=3}] run fill 196 357 98 196 357 98 lapis_block
execute as @p[scores={MapMode=3}] run fill 196 357 96 196 357 96 netherrack
# reset MapMode player
scoreboard players reset @a MapMode

execute as @p[scores={Regenerate=36..},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 198 338 105 201 339 110 air
execute as @p[scores={Regenerate=36..},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 183 64 2161 183 64 2161 stone replace redstone_block
execute as @p[scores={Regenerate=36..},x=199,y=336,z=106,dx=0,dy=0,dz=0] run fill 183 64 2163 183 64 2163 redstone_block replace stone
execute as @p[scores={Regenerate=36..},x=199,y=336,z=106,dx=0,dy=0,dz=0] run scoreboard objectives remove Regenerate