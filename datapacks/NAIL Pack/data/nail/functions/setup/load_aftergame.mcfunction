# set gamestatus to 3
scoreboard players set fake! gamestatus 3

function nail:setup/set_gamerules

# clear various scoreboards
scoreboard objectives remove Enderman
scoreboard objectives remove T1StartTimer
scoreboard objectives remove T2StartTimer
scoreboard objectives remove TroughKill