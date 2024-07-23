# set gamestatus to 3
scoreboard players set fake! gamestatus 3

function nail:setup/set_gamerules

gamemode spectator @a[scores={Teams=1..2}]

# clear various scoreboards
scoreboard objectives remove Enderman
scoreboard objectives remove T1StartTimer
scoreboard objectives remove T2StartTimer
scoreboard objectives remove TroughKill
scoreboard objectives remove T1RespawnRotate
forceload remove 0 226 -1 226

# lane protection setup
scoreboard objectives remove LaneProtection

# time set
scoreboard players set @p DefenderHandicap 0
scoreboard players operation @p[scores={DefenderHandicap=0}] DefenderHandicap = fake! DefenderHandicap
execute @p[scores={DefenderHandicap=0}] ~ ~ ~ time set 12000
execute @p[scores={DefenderHandicap=1}] ~ ~ ~ time set 10800
scoreboard players reset @a DefenderHandicap

# difficulty
difficulty hard