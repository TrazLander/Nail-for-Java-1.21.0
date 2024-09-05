# set gamestatus to 1
scoreboard objectives remove gamestatus
scoreboard objectives add gamestatus dummy
scoreboard players set fake! gamestatus 1

function nail:_load/set_gamerules

# set MapMode
# 1 = tournament, 2 = friendlies (default), 3 = automatic
scoreboard objectives remove MapMode
scoreboard objectives add MapMode dummy
scoreboard players set fake! MapMode 2

# Playing display
scoreboard objectives remove GameStart
scoreboard objectives add GameStart dummy
scoreboard objectives setdisplay sidebar GameStart

# sets Teams scoreboard
scoreboard objectives add Teams dummy
scoreboard players set @a[scores={Teams=..2}] Teams 0
scoreboard players set @a[scores={Teams=20}] Teams 21
scoreboard players set @a[scores={SwapSidesTemp=11}] Teams 11
scoreboard players set @a[scores={SwapSidesTemp=12}] Teams 12
scoreboard objectives remove SwapSidesTemp

# setup teams
function nail:_load/setup_teams

# clear various scoreboards that might be up during a mid-game reset
scoreboard objectives remove Enderman
scoreboard objectives remove T1StartTimer
scoreboard objectives remove T2StartTimer
scoreboard objectives remove TroughKill
# scoreboard objectives remove T1RespawnRotate
scoreboard objectives remove TNTboard
scoreboard objectives remove Kills
scoreboard objectives remove ResetHidden
scoreboard objectives remove Reset
scoreboard objectives remove KillAll


forceload remove 0 226 -1 226

# add beforegame scoreboards
scoreboard objectives remove levers
execute if score fake! MapMode matches 1..2 run scoreboard objectives add levers dummy

scoreboard objectives remove ReadyDisplay
scoreboard objectives remove ReadyDisplay2
execute if score fake! MapMode matches 1..2 run scoreboard objectives add ReadyDisplay dummy
execute if score fake! MapMode matches 1..2 run scoreboard objectives add ReadyDisplay2 dummy

# lane protection setup
scoreboard objectives remove LaneProtection

# specific player check scoreboard
scoreboard objectives add SpecificPlayer dummy

# defender handicap setup
scoreboard objectives add DefenderHandicap dummy

# time set
execute unless score fake! DefenderHandicap matches 1 run time set 12000
execute if score fake! DefenderHandicap matches 1 run time set 10800

# difficulty
difficulty hard

# add queue set
scoreboard objectives remove QueueSet
execute if score fake! MapMode matches 3 run scoreboard objectives add QueueSet dummy

# Initial Min and Max Players
scoreboard objectives add MinMax dummy
scoreboard players set Min! MinMax 8
scoreboard players set Max! MinMax 12

# Queue add to teams
scoreboard objectives remove QueueTeamsReady
execute if score fake! MapMode matches 3 run scoreboard objectives add QueueTeamsReady dummy
execute if score fake! MapMode matches 3 run scoreboard players set fake! QueueTeamsReady 1

# Automatic Mode - add Minimum Players scoreboard
execute if score fake! MapMode matches 3 run scoreboard objectives add MinimumPlayers dummy
