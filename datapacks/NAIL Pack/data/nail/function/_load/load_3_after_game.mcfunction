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

forceload remove 0 226 -1 226

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
scoreboard objectives remove KillAll
# add scoreboards
scoreboard objectives add ResetHidden dummy
scoreboard objectives add Reset dummy
scoreboard objectives setdisplay sidebar Reset
scoreboard players set fake! Reset 30