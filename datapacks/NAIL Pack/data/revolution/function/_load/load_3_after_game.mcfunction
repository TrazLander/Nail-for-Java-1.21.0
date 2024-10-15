# set gamestatus to 3
scoreboard players set fake! gamestatus 3

function nail:_load/set_gamerules

gamemode spectator @a[scores={Teams=1..2}]

# clear various scoreboards
scoreboard objectives remove Enderman
scoreboard objectives remove T1StartTimer
scoreboard objectives remove T2StartTimer
scoreboard objectives remove TroughKill
# scoreboard objectives remove T1RespawnRotate
scoreboard objectives remove LaneProtection

# time set
execute unless score fake! DefenderHandicap matches 1 run time set 12000
execute if score fake! DefenderHandicap matches 1 run time set 10800

# difficulty
difficulty peaceful
scoreboard objectives add difficultytemp dummy
scoreboard players set fake! difficultytemp 1

# reset
# redundant remove boards just in case
scoreboard objectives remove ResetHidden
scoreboard objectives remove Reset
# add scoreboards
scoreboard objectives add ResetHidden dummy
scoreboard objectives add Reset dummy
scoreboard objectives setdisplay sidebar Reset
scoreboard players set ~~Resetting~~ Reset 30


gamemode spectator @a
effect clear @a
experience set @a 0 points
experience set @a 0 levels
effect give @a minecraft:saturation infinite 255 true
effect give @a minecraft:instant_health 2 10 true
effect give @a minecraft:resistance infinite 5 true
effect give @a minecraft:weakness infinite 5 true

tp @e[type=!player] ~ ~-300 ~