# fix hanging vines not placing properly
scoreboard players add fake! Vine_Fix 1

execute if score fake! Vine_Fix matches 200.. run execute if block 216 350 217 minecraft:vine run execute if block 202 349 172 minecraft:vine run execute if block 181 350 217 minecraft:vine run execute positioned 199 317 18 run forceload remove ~-48 ~33 ~48 ~240
execute if score fake! Vine_Fix matches 200.. run execute if block 216 350 217 minecraft:vine run execute if block 202 349 172 minecraft:vine run execute if block 181 350 217 minecraft:vine run gamerule doVinesSpread false
execute if score fake! Vine_Fix matches 200.. run execute if block 216 350 217 minecraft:vine run execute if block 202 349 172 minecraft:vine run execute if block 181 350 217 minecraft:vine run gamerule randomTickSpeed 0

execute if score fake! Vine_Fix matches 200.. run execute if block 216 350 217 minecraft:vine run execute if block 202 349 172 minecraft:vine run execute if block 181 350 217 minecraft:vine run scoreboard objectives remove Vine_Fix