# clear reset stuff
scoreboard objectives remove ResetHidden
scoreboard players set ~~Resetting~~ Reset 0
scoreboard players reset fake! Reset

# stop re-entry
fill 164 4 2167 164 4 2168 obsidian
fill 164 4 2162 164 4 2163 obsidian
fill 152 4 2164 152 4 2166 obsidian

# run - Reset Map
tp @e[type=!player] ~ ~-300 ~
# triggers map generation
# triggers Reset Block 1
function nail:game/map_reset/reset_block_1
scoreboard objectives add KillAll dummy

# set first reset person
tp @p[x=199,y=336,z=106] 199 336 106 0 0
gamemode adventure @p[x=199,y=336,z=106,dx=0,dy=0,dz=0]

scoreboard objectives add temp dummy
scoreboard players set @a temp 0
scoreboard players set @p[x=199,y=336,z=106,dx=0,dy=0,dz=0,gamemode=adventure] temp 1
scoreboard players set @a[x=153,y=2,z=2161,dx=11,dy=4,dz=8] temp 1
spawnpoint @a[scores={temp=0..1}] 157 2 2165
tp @a[scores={temp=0}] 157 2 2165 -90 0
gamemode adventure @a[scores={temp=0}]

clear @a[scores={temp=0..1}]
effect clear @a[scores={temp=0..1}]
experience set @a[scores={temp=0..1}] 0 points
experience set @a[scores={temp=0..1}] 0 levels
effect give @a[scores={temp=0..1}] minecraft:saturation infinite 255 true
effect give @a[scores={temp=0..1}] minecraft:instant_health 2 10 true
effect give @a[scores={temp=0..1}] minecraft:resistance infinite 5 true
effect give @a[scores={temp=0..1}] minecraft:weakness infinite 5 true

scoreboard objectives remove temp