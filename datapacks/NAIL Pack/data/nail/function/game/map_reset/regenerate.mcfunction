# ops can't mode toggle while regenerating
execute if score fake! Regenerate matches 0.. run tellraw @a[gamemode=!spectator] {"text":"Gamemode may not be toggled while map is regenerating, please wait.","italic":true,"color":"red"}
execute if score fake! Regenerate matches 0.. run gamemode spectator @a[gamemode=!spectator]

# make chests and stuff not drop crap everywhere
execute if score fake! Regenerate matches 0 run gamerule doTileDrops false


execute if score fake! Regenerate matches 0 run execute positioned 199 317 18 run forceload add ~-48 ~ ~48 ~48
execute if score fake! Regenerate matches 0 run execute positioned 199 317 18 run place template nail:whole_map/sec1_layer1_right ~-47 ~3 ~
execute if score fake! Regenerate matches 4 run execute positioned 199 317 18 run place template nail:whole_map/sec1_layer1_left ~1 ~3 ~
execute if score fake! Regenerate matches 8 run execute positioned 199 317 18 run place template nail:whole_map/sec1_layer2_right ~-47 ~50 ~
execute if score fake! Regenerate matches 12 run execute positioned 199 317 18 run place template nail:whole_map/sec1_layer2_left ~1 ~50 ~
execute if score fake! Regenerate matches 12 run execute positioned 199 317 18 run forceload remove ~-48 ~ ~48 ~48

execute if score fake! Regenerate matches 16 run execute positioned 199 317 18 run forceload add ~-48 ~48 ~48 ~96
execute if score fake! Regenerate matches 16 run execute positioned 199 317 18 run place template nail:whole_map/sec2_layer1_right ~-47 ~3 ~48
execute if score fake! Regenerate matches 20 run execute positioned 199 317 18 run place template nail:whole_map/sec2_layer1_left ~1 ~3 ~48
execute if score fake! Regenerate matches 24 run execute positioned 199 317 18 run place template nail:whole_map/sec2_layer2_right ~-47 ~50 ~48
execute if score fake! Regenerate matches 28 run execute positioned 199 317 18 run place template nail:whole_map/sec2_layer2_left ~1 ~50 ~48
execute if score fake! Regenerate matches 28 run execute positioned 199 317 18 run forceload remove ~-48 ~48 ~48 ~96

execute if score fake! Regenerate matches 32 run execute positioned 199 317 18 run forceload add ~-48 ~96 ~48 ~144
execute if score fake! Regenerate matches 32 run execute positioned 199 317 18 run place template nail:whole_map/sec3_layer1_right ~-23 ~3 ~96
execute if score fake! Regenerate matches 36 run execute positioned 199 317 18 run place template nail:whole_map/sec3_layer1_left ~1 ~3 ~96
execute if score fake! Regenerate matches 40 run execute positioned 199 317 18 run place template nail:whole_map/sec3_layer2_right ~-23 ~50 ~96
execute if score fake! Regenerate matches 44 run execute positioned 199 317 18 run place template nail:whole_map/sec3_layer2_left ~1 ~50 ~96
execute if score fake! Regenerate matches 44 run execute positioned 199 317 18 run forceload remove ~-48 96 ~48 ~144

execute if score fake! Regenerate matches 48 run execute positioned 199 317 18 run forceload add ~-48 ~144 ~48 ~192
execute if score fake! Regenerate matches 48 run execute positioned 199 317 18 run place template nail:whole_map/sec4_layer1_right ~-23 ~3 ~144
execute if score fake! Regenerate matches 52 run execute positioned 199 317 18 run place template nail:whole_map/sec4_layer1_left ~1 ~3 ~144
execute if score fake! Regenerate matches 56 run execute positioned 199 317 18 run place template nail:whole_map/sec4_layer2_right ~-23 ~50 ~144
execute if score fake! Regenerate matches 60 run execute positioned 199 317 18 run place template nail:whole_map/sec4_layer2_left ~1 ~50 ~144
execute if score fake! Regenerate matches 60 run execute positioned 199 317 18 run forceload remove ~-48 ~144 ~48 ~192

execute if score fake! Regenerate matches 64 run execute positioned 199 317 18 run forceload add ~-48 ~192 ~48 ~240
execute if score fake! Regenerate matches 64 run execute positioned 199 317 18 run place template nail:whole_map/sec5_layer1_right ~-23 ~3 ~192
execute if score fake! Regenerate matches 68 run execute positioned 199 317 18 run place template nail:whole_map/sec5_layer1_left ~1 ~3 ~192
execute if score fake! Regenerate matches 72 run execute positioned 199 317 18 run place template nail:whole_map/sec5_layer2_right ~-23 ~50 ~192
execute if score fake! Regenerate matches 76 run execute positioned 199 317 18 run place template nail:whole_map/sec5_layer2_left ~1 ~50 ~192
execute if score fake! Regenerate matches 76 run execute positioned 199 317 18 run forceload remove ~-48 ~192 ~48 ~240

execute if score fake! Regenerate matches 80 run execute positioned 199 317 18 run forceload add ~-48 ~240 ~48 ~288
execute if score fake! Regenerate matches 80 run execute positioned 199 317 18 run place template nail:whole_map/sec6_layer1_right ~-23 ~3 ~240
execute if score fake! Regenerate matches 84 run execute positioned 199 317 18 run place template nail:whole_map/sec6_layer1_left ~1 ~3 ~240
execute if score fake! Regenerate matches 88 run execute positioned 199 317 18 run place template nail:whole_map/sec6_layer2_right ~-23 ~50 ~240
execute if score fake! Regenerate matches 92 run execute positioned 199 317 18 run place template nail:whole_map/sec6_layer2_left ~1 ~50 ~240
# update sign for defender handicap
execute if score fake! Regenerate matches 92 run execute if score fake! DefenderHandicap matches 1 run place template nail:clock_numbers/clock_3 193 384 286
execute if score fake! Regenerate matches 92 run execute positioned 199 317 18 run forceload remove ~-48 ~240 ~48 ~288

execute if score fake! Regenerate matches 98 run execute positioned 199 317 18 run forceload add ~-48 ~288 ~48 ~336
execute if score fake! Regenerate matches 98 run execute positioned 199 317 18 run place template nail:whole_map/sec7_layer1_right ~-23 ~3 ~288
execute if score fake! Regenerate matches 100 run execute positioned 199 317 18 run place template nail:whole_map/sec7_layer1_left ~1 ~3 ~288
execute if score fake! Regenerate matches 104 run execute positioned 199 317 18 run place template nail:whole_map/sec7_layer2_right ~-23 ~50 ~288
execute if score fake! Regenerate matches 108 run execute positioned 199 317 18 run place template nail:whole_map/sec7_layer2_left ~1 ~50 ~288
execute if score fake! Regenerate matches 108 run execute positioned 199 317 18 run forceload remove ~-48 ~288 ~48 ~336

execute if score fake! Regenerate matches 112 run execute positioned 199 317 18 run forceload add ~-48 ~336 ~48 ~384
execute if score fake! Regenerate matches 112 run execute positioned 199 317 18 run place template nail:whole_map/sec8_layer1_right ~-23 ~3 ~336
execute if score fake! Regenerate matches 116 run execute positioned 199 317 18 run place template nail:whole_map/sec8_layer1_left ~1 ~3 ~336
execute if score fake! Regenerate matches 120 run execute positioned 199 317 18 run place template nail:whole_map/sec8_layer2_right ~-23 ~50 ~336
execute if score fake! Regenerate matches 124 run execute positioned 199 317 18 run place template nail:whole_map/sec8_layer2_left ~1 ~50 ~336
execute if score fake! Regenerate matches 124 run execute positioned 199 317 18 run forceload remove ~-48 ~366 ~48 ~384

execute if score fake! Regenerate matches 128 run execute positioned 199 317 18 run forceload add ~-48 ~384 ~48 ~432
execute if score fake! Regenerate matches 128 run execute positioned 199 317 18 run place template nail:whole_map/sec9_layer1_right ~-23 ~3 ~384
execute if score fake! Regenerate matches 132 run execute positioned 199 317 18 run place template nail:whole_map/sec9_layer1_left ~1 ~3 ~384
execute if score fake! Regenerate matches 136 run execute positioned 199 317 18 run place template nail:whole_map/sec9_layer2_right ~-23 ~50 ~384
execute if score fake! Regenerate matches 140 run execute positioned 199 317 18 run place template nail:whole_map/sec9_layer2_left ~1 ~50 ~384
execute if score fake! Regenerate matches 140 run execute positioned 199 317 18 run forceload remove ~-48 ~384 ~48 ~432

execute if score fake! Regenerate matches 144 run execute positioned 199 317 18 run forceload add ~-48 ~432 ~48 ~480
execute if score fake! Regenerate matches 144 run execute positioned 199 317 18 run place template nail:whole_map/sec10_layer1_right ~-23 ~3 ~432
execute if score fake! Regenerate matches 148 run execute positioned 199 317 18 run place template nail:whole_map/sec10_layer1_left ~1 ~3 ~432
execute if score fake! Regenerate matches 152 run execute positioned 199 317 18 run place template nail:whole_map/sec10_layer2_right ~-23 ~50 ~432
execute if score fake! Regenerate matches 156 run execute positioned 199 317 18 run place template nail:whole_map/sec10_layer2_left ~1 ~50 ~432
execute if score fake! Regenerate matches 156 run execute positioned 199 317 18 run forceload remove ~-48 ~432 ~48 ~480

scoreboard players add fake! Regenerate 1

execute if score fake! Regenerate matches 160.. run function nail:_load/load_1_pre_game