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

execute if score fake! Regenerate matches 5 run execute positioned 100 200 0 run forceload add ~52 ~25 ~148 ~73
execute if score fake! Regenerate matches 5 run execute positioned 100 200 0 run place template revolution:sec1_layer1_left_inner ~99 ~131 ~25
execute if score fake! Regenerate matches 6 run execute positioned 100 200 0 run place template revolution:sec1_layer1_right_inner ~52 ~131 ~25
execute if score fake! Regenerate matches 6 run execute positioned 100 200 0 run forceload remove ~52 ~25 ~148 ~73

# air 100-200
execute if score fake! Regenerate matches 7 run execute positioned 100 200 0 run forceload add ~ ~100 ~200 ~200
execute if score fake! Regenerate matches 7 run execute positioned 100 200 0 run fill ~ ~151 ~100 ~200 ~199 ~200 air
execute if score fake! Regenerate matches 8 run execute positioned 100 200 0 run fill ~ ~101 ~100 ~200 ~150 ~200 air
execute if score fake! Regenerate matches 9 run execute positioned 100 200 0 run fill ~ ~51 ~100 ~200 ~100 ~200 air
execute if score fake! Regenerate matches 10 run execute positioned 100 200 0 run fill ~ ~ ~100 ~200 ~167 ~200 air
execute if score fake! Regenerate matches 10 run execute positioned 100 200 0 run forceload remove ~ ~100 ~200 ~200

execute if score fake! Regenerate matches 11 run execute positioned 100 200 0 run forceload add ~52 ~55 ~100 ~103
execute if score fake! Regenerate matches 11 run execute positioned 100 200 0 run place template revolution:sec2_layer1_left_inner ~99 ~131 ~73
execute if score fake! Regenerate matches 12 run execute positioned 100 200 0 run place template revolution:sec2_layer1_left_outer ~147 ~131 ~73
execute if score fake! Regenerate matches 13 run execute positioned 100 200 0 run place template revolution:sec2_layer2_left_outer ~147 ~178 ~73

execute if score fake! Regenerate matches 14 run execute positioned 100 200 0 run place template revolution:sec2_layer1_right_inner ~52 ~131 ~73
execute if score fake! Regenerate matches 15 run execute positioned 100 200 0 run place template revolution:sec2_layer1_right_outer ~4 ~131 ~73
execute if score fake! Regenerate matches 16 run execute positioned 100 200 0 run place template revolution:sec2_layer2_right_outer ~4 ~178 ~73
execute if score fake! Regenerate matches 16 run execute positioned 100 200 0 run forceload remove ~ ~55 ~100 ~103

execute if score fake! Regenerate matches 17 run execute positioned 100 200 0 run forceload add ~ ~103 ~100 ~151
execute if score fake! Regenerate matches 17 run execute positioned 100 200 0 run place template revolution:sec3_layer1_left_inner ~99 ~131 ~121
execute if score fake! Regenerate matches 18 run execute positioned 100 200 0 run place template revolution:sec3_layer1_right_inner ~52 ~131 ~121
execute if score fake! Regenerate matches 18 run execute positioned 100 200 0 run forceload remove ~ ~103 ~100 ~151

execute if score fake! Regenerate matches 19 run execute positioned 100 200 0 run forceload add ~ ~151 ~100 ~199
execute if score fake! Regenerate matches 19 run execute positioned 100 200 0 run place template revolution:sec4_layer1_left_inner ~99 ~131 ~169
execute if score fake! Regenerate matches 20 run execute positioned 100 200 0 run place template revolution:sec4_layer1_right_inner ~52 ~131 ~169
execute if score fake! Regenerate matches 20 run execute positioned 100 200 0 run forceload remove ~ ~151 ~100 ~199

# air 200-300
execute if score fake! Regenerate matches 21 run execute positioned 100 200 0 run forceload add ~ ~200 ~200 ~300
execute if score fake! Regenerate matches 21 run execute positioned 100 200 0 run fill ~ ~151 ~200 ~200 ~199 ~300 air
execute if score fake! Regenerate matches 22 run execute positioned 100 200 0 run fill ~ ~101 ~200 ~200 ~150 ~300 air
execute if score fake! Regenerate matches 23 run execute positioned 100 200 0 run fill ~ ~51 ~200 ~200 ~100 ~300 air
execute if score fake! Regenerate matches 24 run execute positioned 100 200 0 run fill ~ ~ ~200 ~200 ~167 ~300 air
execute if score fake! Regenerate matches 24 run execute positioned 100 200 0 run forceload remove ~ ~200 ~200 ~300

# air 300-400
execute if score fake! Regenerate matches 25 run execute positioned 100 200 0 run forceload add ~ ~300 ~200 ~400
execute if score fake! Regenerate matches 25 run execute positioned 100 200 0 run fill ~ ~151 ~300 ~200 ~199 ~400 air
execute if score fake! Regenerate matches 26 run execute positioned 100 200 0 run fill ~ ~101 ~300 ~200 ~150 ~400 air
execute if score fake! Regenerate matches 27 run execute positioned 100 200 0 run fill ~ ~51 ~300 ~200 ~100 ~400 air
execute if score fake! Regenerate matches 28 run execute positioned 100 200 0 run fill ~ ~ ~300 ~200 ~167 ~400 air
execute if score fake! Regenerate matches 28 run execute positioned 100 200 0 run forceload remove ~ ~300 ~200 ~400

# air 400-500
execute if score fake! Regenerate matches 29 run execute positioned 100 200 0 run forceload add ~ ~400 ~200 ~500
execute if score fake! Regenerate matches 29 run execute positioned 100 200 0 run fill ~ ~151 ~400 ~200 ~199 ~500 air
execute if score fake! Regenerate matches 30 run execute positioned 100 200 0 run fill ~ ~101 ~400 ~200 ~150 ~500 air
execute if score fake! Regenerate matches 31 run execute positioned 100 200 0 run fill ~ ~51 ~400 ~200 ~100 ~500 air
execute if score fake! Regenerate matches 32 run execute positioned 100 200 0 run fill ~ ~ ~400 ~200 ~167 ~500 air
execute if score fake! Regenerate matches 32 run execute positioned 100 200 0 run forceload remove ~ ~400 ~200 ~500

# execute if score fake! Regenerate matches 33.. run function revolution:_load/load_1_pre_game

# tempoary
execute if score fake! Regenerate matches 33.. run scoreboard objectives remove Regenerate