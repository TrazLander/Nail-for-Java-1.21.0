# add count
scoreboard players add fake! Regenerate 1
scoreboard players set tick! Regenerate 0

# regenerate map, set air from 100 200 0 to ~200 ~199 ~500

# air 0-100
execute if score fake! Regenerate matches 1 run execute positioned 100 200 0 run forceload add ~ ~ ~200 ~100
execute if score fake! Regenerate matches 1 run execute positioned 100 200 0 run fill ~ ~151 ~ ~200 ~199 ~100 air
execute if score fake! Regenerate matches 2 run execute positioned 100 200 0 run fill ~ ~101 ~ ~200 ~150 ~100 air
execute if score fake! Regenerate matches 3 run execute positioned 100 200 0 run fill ~ ~51 ~ ~200 ~100 ~100 air
execute if score fake! Regenerate matches 4 run execute positioned 100 200 0 run fill ~ ~ ~ ~200 ~167 ~100 air
execute if score fake! Regenerate matches 4 run execute positioned 100 200 0 run forceload remove ~ ~ ~200 ~100

execute if score fake! Regenerate matches 5 run execute positioned 100 200 0 run forceload add ~52 ~18 ~148 ~66
execute if score fake! Regenerate matches 5 run execute positioned 100 200 0 run place template nail:whole_map/sec1_layer1_right ~52 ~120 ~18
execute if score fake! Regenerate matches 6 run execute positioned 100 200 0 run place template nail:whole_map/sec1_layer1_left ~100 ~120 ~18
execute if score fake! Regenerate matches 7 run execute positioned 100 200 0 run place template nail:whole_map/sec1_layer2_right ~52 ~167 ~18
execute if score fake! Regenerate matches 8 run execute positioned 100 200 0 run place template nail:whole_map/sec1_layer2_left ~100 ~167 ~18
execute if score fake! Regenerate matches 8 run execute positioned 100 200 0 run forceload remove ~52 ~18 ~148 ~66

# air 100-200
execute if score fake! Regenerate matches 5 run execute positioned 100 200 0 run forceload add ~ ~100 ~200 ~200
execute if score fake! Regenerate matches 5 run execute positioned 100 200 0 run fill ~ ~151 ~100 ~200 ~199 ~200 air
execute if score fake! Regenerate matches 6 run execute positioned 100 200 0 run fill ~ ~101 ~100 ~200 ~150 ~200 air
execute if score fake! Regenerate matches 7 run execute positioned 100 200 0 run fill ~ ~51 ~100 ~200 ~100 ~200 air
execute if score fake! Regenerate matches 8 run execute positioned 100 200 0 run fill ~ ~ ~100 ~200 ~167 ~200 air
execute if score fake! Regenerate matches 8 run execute positioned 100 200 0 run forceload remove ~ ~100 ~200 ~200

execute if score fake! Regenerate matches 9 run execute positioned 100 200 0 run forceload add ~52 ~66 ~148 ~114
execute if score fake! Regenerate matches 9 run execute positioned 100 200 0 run place template nail:whole_map/sec2_layer1_right ~52 ~120 ~66
execute if score fake! Regenerate matches 10 run execute positioned 100 200 0 run place template nail:whole_map/sec2_layer1_left ~100 ~120 ~66
execute if score fake! Regenerate matches 11 run execute positioned 100 200 0 run place template nail:whole_map/sec2_layer2_right ~52 ~167 ~66
execute if score fake! Regenerate matches 12 run execute positioned 100 200 0 run place template nail:whole_map/sec2_layer2_left ~100 ~167 ~66
execute if score fake! Regenerate matches 12 run execute positioned 100 200 0 run forceload remove ~52 ~66 ~148 ~114

execute if score fake! Regenerate matches 13 run execute positioned 100 200 0 run forceload add ~52 ~114 ~148 ~162
execute if score fake! Regenerate matches 13 run execute positioned 100 200 0 run place template nail:whole_map/sec3_layer1_right ~76 ~120 ~114
execute if score fake! Regenerate matches 14 run execute positioned 100 200 0 run place template nail:whole_map/sec3_layer1_left ~100 ~120 ~114
execute if score fake! Regenerate matches 15 run execute positioned 100 200 0 run place template nail:whole_map/sec3_layer2_right ~76 ~167 ~114
execute if score fake! Regenerate matches 16 run execute positioned 100 200 0 run place template nail:whole_map/sec3_layer2_left ~100 ~167 ~114
execute if score fake! Regenerate matches 16 run execute positioned 100 200 0 run forceload remove ~52 114 ~148 ~162

# air 200-300
execute if score fake! Regenerate matches 17 run execute positioned 100 200 0 run forceload add ~ ~200 ~200 ~300
execute if score fake! Regenerate matches 17 run execute positioned 100 200 0 run fill ~ ~151 ~200 ~200 ~199 ~300 air
execute if score fake! Regenerate matches 18 run execute positioned 100 200 0 run fill ~ ~101 ~200 ~200 ~150 ~300 air
execute if score fake! Regenerate matches 19 run execute positioned 100 200 0 run fill ~ ~51 ~200 ~200 ~100 ~300 air
execute if score fake! Regenerate matches 20 run execute positioned 100 200 0 run fill ~ ~ ~200 ~200 ~167 ~300 air
execute if score fake! Regenerate matches 20 run execute positioned 100 200 0 run forceload remove ~ ~200 ~200 ~300

execute if score fake! Regenerate matches 21 run execute positioned 100 200 0 run forceload add ~52 ~162 ~148 ~210
execute if score fake! Regenerate matches 21 run execute positioned 100 200 0 run place template nail:whole_map/sec4_layer1_right ~76 ~120 ~162
execute if score fake! Regenerate matches 22 run execute positioned 100 200 0 run place template nail:whole_map/sec4_layer1_left ~100 ~120 ~162
execute if score fake! Regenerate matches 23 run execute positioned 100 200 0 run place template nail:whole_map/sec4_layer2_right ~76 ~167 ~162
execute if score fake! Regenerate matches 24 run execute positioned 100 200 0 run place template nail:whole_map/sec4_layer2_left ~100 ~167 ~162
execute if score fake! Regenerate matches 24 run execute positioned 100 200 0 run forceload remove ~52 ~162 ~148 ~210

execute if score fake! Regenerate matches 25 run execute positioned 100 200 0 run forceload add ~52 ~210 ~148 ~258
execute if score fake! Regenerate matches 25 run execute positioned 100 200 0 run place template nail:whole_map/sec5_layer1_right ~76 ~120 ~210
execute if score fake! Regenerate matches 26 run execute positioned 100 200 0 run place template nail:whole_map/sec5_layer1_left ~100 ~120 ~210
execute if score fake! Regenerate matches 27 run execute positioned 100 200 0 run place template nail:whole_map/sec5_layer2_right ~76 ~167 ~210
execute if score fake! Regenerate matches 28 run execute positioned 100 200 0 run place template nail:whole_map/sec5_layer2_left ~100 ~167 ~210
execute if score fake! Regenerate matches 28 run execute positioned 100 200 0 run forceload remove ~52 ~210 ~148 ~258

execute if score fake! Regenerate matches 29 run execute positioned 100 200 0 run forceload add ~52 ~258 ~148 ~288
execute if score fake! Regenerate matches 29 run execute positioned 100 200 0 run place template nail:whole_map/sec6_layer1_right ~76 ~120 ~258
execute if score fake! Regenerate matches 30 run execute positioned 100 200 0 run place template nail:whole_map/sec6_layer1_left ~100 ~120 ~258
execute if score fake! Regenerate matches 31 run execute positioned 100 200 0 run place template nail:whole_map/sec6_layer2_right ~76 ~167 ~258
execute if score fake! Regenerate matches 32 run execute positioned 100 200 0 run place template nail:whole_map/sec6_layer2_left ~100 ~167 ~258
# update sign for defender handicap
execute if score fake! Regenerate matches 32 run execute if score fake! DefenderHandicap matches 1 run place template nail:clock_numbers/clock_3 292 384 304
execute if score fake! Regenerate matches 32 run execute positioned 100 200 0 run forceload remove ~52 ~258 ~148 ~288

# air 300-400
execute if score fake! Regenerate matches 33 run execute positioned 100 200 0 run forceload add ~ ~300 ~200 ~400
execute if score fake! Regenerate matches 33 run execute positioned 100 200 0 run fill ~ ~151 ~300 ~200 ~199 ~400 air
execute if score fake! Regenerate matches 34 run execute positioned 100 200 0 run fill ~ ~101 ~300 ~200 ~150 ~400 air
execute if score fake! Regenerate matches 35 run execute positioned 100 200 0 run fill ~ ~51 ~300 ~200 ~100 ~400 air
execute if score fake! Regenerate matches 36 run execute positioned 100 200 0 run fill ~ ~ ~300 ~200 ~167 ~400 air
execute if score fake! Regenerate matches 36 run execute positioned 100 200 0 run forceload remove ~ ~300 ~200 ~400

execute if score fake! Regenerate matches 37 run execute positioned 100 200 0 run forceload add ~52 ~288 ~148 ~336
execute if score fake! Regenerate matches 37 run execute positioned 100 200 0 run place template nail:whole_map/sec7_layer1_right ~76 ~120 ~306
execute if score fake! Regenerate matches 38 run execute positioned 100 200 0 run place template nail:whole_map/sec7_layer1_left ~100 ~120 ~306
execute if score fake! Regenerate matches 39 run execute positioned 100 200 0 run place template nail:whole_map/sec7_layer2_right ~76 ~167 ~306
execute if score fake! Regenerate matches 40 run execute positioned 100 200 0 run place template nail:whole_map/sec7_layer2_left ~100 ~167 ~306
execute if score fake! Regenerate matches 40 run execute positioned 100 200 0 run forceload remove ~52 ~288 ~148 ~336

execute if score fake! Regenerate matches 41 run execute positioned 100 200 0 run forceload add ~52 ~336 ~148 ~384
execute if score fake! Regenerate matches 41 run execute positioned 100 200 0 run place template nail:whole_map/sec8_layer1_right ~76 ~120 ~354
execute if score fake! Regenerate matches 42 run execute positioned 100 200 0 run place template nail:whole_map/sec8_layer1_left ~100 ~120 ~354
execute if score fake! Regenerate matches 43 run execute positioned 100 200 0 run place template nail:whole_map/sec8_layer2_right ~76 ~167 ~354
execute if score fake! Regenerate matches 44 run execute positioned 100 200 0 run place template nail:whole_map/sec8_layer2_left ~100 ~167 ~354
execute if score fake! Regenerate matches 44 run execute positioned 100 200 0 run forceload remove ~52 ~366 ~148 ~384

# air 400-500
execute if score fake! Regenerate matches 45 run execute positioned 100 200 0 run forceload add ~ ~400 ~200 ~500
execute if score fake! Regenerate matches 45 run execute positioned 100 200 0 run fill ~ ~151 ~400 ~200 ~199 ~500 air
execute if score fake! Regenerate matches 46 run execute positioned 100 200 0 run fill ~ ~101 ~400 ~200 ~150 ~500 air
execute if score fake! Regenerate matches 47 run execute positioned 100 200 0 run fill ~ ~51 ~400 ~200 ~100 ~500 air
execute if score fake! Regenerate matches 48 run execute positioned 100 200 0 run fill ~ ~ ~400 ~200 ~167 ~500 air
execute if score fake! Regenerate matches 48 run execute positioned 100 200 0 run forceload remove ~ ~400 ~200 ~500

execute if score fake! Regenerate matches 49 run execute positioned 100 200 0 run forceload add ~52 ~384 ~148 ~432
execute if score fake! Regenerate matches 49 run execute positioned 100 200 0 run place template nail:whole_map/sec9_layer1_right ~76 ~120 ~402
execute if score fake! Regenerate matches 50 run execute positioned 100 200 0 run place template nail:whole_map/sec9_layer1_left ~100 ~120 ~402
execute if score fake! Regenerate matches 51 run execute positioned 100 200 0 run place template nail:whole_map/sec9_layer2_right ~76 ~167 ~402
execute if score fake! Regenerate matches 52 run execute positioned 100 200 0 run place template nail:whole_map/sec9_layer2_left ~100 ~167 ~402
execute if score fake! Regenerate matches 52 run execute positioned 100 200 0 run forceload remove ~52 ~384 ~148 ~432

execute if score fake! Regenerate matches 53 run execute positioned 100 200 0 run forceload add ~52 ~432 ~148 ~480
execute if score fake! Regenerate matches 53 run execute positioned 100 200 0 run place template nail:whole_map/sec10_layer1_right ~76 ~120 ~450
execute if score fake! Regenerate matches 54 run execute positioned 100 200 0 run place template nail:whole_map/sec10_layer1_left ~100 ~120 ~450
execute if score fake! Regenerate matches 55 run execute positioned 100 200 0 run place template nail:whole_map/sec10_layer2_right ~76 ~167 ~450
execute if score fake! Regenerate matches 56 run execute positioned 100 200 0 run place template nail:whole_map/sec10_layer2_left ~100 ~167 ~450
execute if score fake! Regenerate matches 56 run execute positioned 100 200 0 run forceload remove ~52 ~432 ~148 ~480

execute if score fake! Regenerate matches 57.. run function nail:_load/load_1_pre_game