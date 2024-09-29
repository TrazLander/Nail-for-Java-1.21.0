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


gamerule doTileDrops false

execute positioned 199 317 18 run place template nail:whole_map/sec1_layer1_right ~-47 ~3 ~
execute positioned 199 317 18 run place template nail:whole_map/sec1_layer1_left ~1 ~3 ~
execute positioned 199 317 18 run place template nail:whole_map/sec1_layer2_right ~-47 ~50 ~
execute positioned 199 317 18 run place template nail:whole_map/sec1_layer2_left ~1 ~50 ~

execute positioned 199 317 18 run place template nail:whole_map/sec2_layer1_right ~-47 ~3 ~48
execute positioned 199 317 18 run place template nail:whole_map/sec2_layer1_left ~1 ~3 ~48
execute positioned 199 317 18 run place template nail:whole_map/sec2_layer2_right ~-47 ~50 ~48
execute positioned 199 317 18 run place template nail:whole_map/sec2_layer2_left ~1 ~50 ~48

execute positioned 199 317 18 run place template nail:whole_map/sec3_layer1_right ~-23 ~3 ~96
execute positioned 199 317 18 run place template nail:whole_map/sec3_layer1_left ~1 ~3 ~96
execute positioned 199 317 18 run place template nail:whole_map/sec3_layer2_right ~-23 ~50 ~96
execute positioned 199 317 18 run place template nail:whole_map/sec3_layer2_left ~1 ~50 ~96

execute positioned 199 317 18 run place template nail:whole_map/sec4_layer1_right ~-23 ~3 ~144
execute positioned 199 317 18 run place template nail:whole_map/sec4_layer1_left ~1 ~3 ~144
execute positioned 199 317 18 run place template nail:whole_map/sec4_layer2_right ~-23 ~50 ~144
execute positioned 199 317 18 run place template nail:whole_map/sec4_layer2_left ~1 ~50 ~144

execute positioned 199 317 18 run place template nail:whole_map/sec5_layer1_right ~-23 ~3 ~192
execute positioned 199 317 18 run place template nail:whole_map/sec5_layer1_left ~1 ~3 ~192
execute positioned 199 317 18 run place template nail:whole_map/sec5_layer2_right ~-23 ~50 ~192
execute positioned 199 317 18 run place template nail:whole_map/sec5_layer2_left ~1 ~50 ~192

execute positioned 199 317 18 run place template nail:whole_map/sec6_layer1_right ~-23 ~3 ~240
execute positioned 199 317 18 run place template nail:whole_map/sec6_layer1_left ~1 ~3 ~240
execute positioned 199 317 18 run place template nail:whole_map/sec6_layer2_right ~-23 ~50 ~240
execute positioned 199 317 18 run place template nail:whole_map/sec6_layer2_left ~1 ~50 ~240

execute positioned 199 317 18 run place template nail:whole_map/sec7_layer1_right ~-23 ~3 ~288
execute positioned 199 317 18 run place template nail:whole_map/sec7_layer1_left ~1 ~3 ~288
execute positioned 199 317 18 run place template nail:whole_map/sec7_layer2_right ~-23 ~50 ~288
execute positioned 199 317 18 run place template nail:whole_map/sec7_layer2_left ~1 ~50 ~288

execute positioned 199 317 18 run place template nail:whole_map/sec8_layer1_right ~-23 ~3 ~336
execute positioned 199 317 18 run place template nail:whole_map/sec8_layer1_left ~1 ~3 ~336
execute positioned 199 317 18 run place template nail:whole_map/sec8_layer2_right ~-23 ~50 ~336
execute positioned 199 317 18 run place template nail:whole_map/sec8_layer2_left ~1 ~50 ~336

execute positioned 199 317 18 run place template nail:whole_map/sec9_layer1_right ~-23 ~3 ~384
execute positioned 199 317 18 run place template nail:whole_map/sec9_layer1_left ~1 ~3 ~384
execute positioned 199 317 18 run place template nail:whole_map/sec9_layer2_right ~-23 ~50 ~384
execute positioned 199 317 18 run place template nail:whole_map/sec9_layer2_left ~1 ~50 ~384

execute positioned 199 317 18 run place template nail:whole_map/sec10_layer1_right ~-23 ~3 ~432
execute positioned 199 317 18 run place template nail:whole_map/sec10_layer1_left ~1 ~3 ~432
execute positioned 199 317 18 run place template nail:whole_map/sec10_layer2_right ~-23 ~50 ~432
execute positioned 199 317 18 run place template nail:whole_map/sec10_layer2_left ~1 ~50 ~432

gamerule doTileDrops true