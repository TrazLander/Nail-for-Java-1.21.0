scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=199,y=336,z=490,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=199,y=336,z=490,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[x=199,y=336,z=426,scores={Regenerate=..-1}] 199 336 490 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},x=199,y=336,z=490,dx=0,dy=0,dz=0]

execute as @p[scores={Regenerate=18},x=199,y=336,z=490,dx=0,dy=0,dz=0] run clone 218 44 2169 221 45 2171 198 338 489

execute as @p[scores={Regenerate=18},x=199,y=336,z=490,dx=0,dy=0,dz=0] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},x=199,y=336,z=490,dx=0,dy=0,dz=0] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},x=199,y=336,z=490,dx=0,dy=0,dz=0] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 199 339 491 199 339 491 redstone_block
execute as @p[scores={Regenerate=20},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 199 339 491 199 339 491 air

execute as @p[scores={Regenerate=22},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 200 339 491 200 339 491 redstone_block
execute as @p[scores={Regenerate=22},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 200 339 491 200 339 491 air

execute as @p[scores={Regenerate=24},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 198 339 491 198 339 491 redstone_block
execute as @p[scores={Regenerate=24},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 198 339 491 198 339 491 air

execute as @p[scores={Regenerate=26},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 201 339 491 201 339 491 redstone_block
execute as @p[scores={Regenerate=26},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 201 339 491 201 339 491 air

execute as @p[scores={Regenerate=28},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 287 146 2212 219 158 2240 redstone_block
execute as @p[scores={Regenerate=28},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 287 146 2212 219 158 2240 air

execute as @p[scores={Regenerate=30},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 287 146 2212 219 158 2240 redstone_block
execute as @p[scores={Regenerate=30},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 287 146 2212 219 158 2240 air

execute as @p[scores={Regenerate=32},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 287 146 2212 219 158 2240 redstone_block
execute as @p[scores={Regenerate=32},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 287 146 2212 219 158 2240 air

execute as @p[scores={Regenerate=34},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 287 146 2212 219 158 2240 redstone_block
execute as @p[scores={Regenerate=34},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 287 146 2212 219 158 2240 air

scoreboard players operation @p[scores={Regenerate=35},x=199,y=336,z=490,dx=0,dy=0,dz=0] MapMode = fake! MapMode
# clear leave team in tourney mode
execute as @p[scores={MapMode=1}] run fill 198 362 485 201 366 486 stone_bricks
# clear leave team in tourney mode
execute as @p[scores={MapMode=1}] run fill 198 364 484 201 364 484 air
scoreboard players reset @a MapMode

execute as @p[scores={Regenerate=36..},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 198 338 489 401 483 541 air
execute as @p[scores={Regenerate=36..},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 183 64 2173 183 64 2173 stone replace redstone_block
execute as @p[scores={Regenerate=36..},x=199,y=336,z=490,dx=0,dy=0,dz=0] run scoreboard objectives remove KillAll

# TRIGGER FULL MAP Reset
execute as @p[scores={Regenerate=36..},x=199,y=336,z=490,dx=0,dy=0,dz=0] run fill 177 1 2161 177 164 2175 redstone_block replace orange_wool

execute as @p[scores={Regenerate=36..},x=199,y=336,z=490,dx=0,dy=0,dz=0] run scoreboard objectives remove Regenerate