# swap sides if coming from a completed game
scoreboard objectives add SwapSides dummy
scoreboard players add fake! SwapSides 1
execute unless score fake! gamestatus matches 3 run scoreboard players set fake! SwapSides 1

# set gamestatus to 1
scoreboard objectives remove gamestatus
scoreboard objectives add gamestatus dummy
scoreboard players set fake! gamestatus 1

function nail:_load/set_gamerules

# clear various scoreboards and ones that might be up during a mid-game reset
scoreboard objectives remove Regenerate
scoreboard objectives remove Enderman
scoreboard objectives remove T1StartTimer
scoreboard objectives remove T2StartTimer
scoreboard objectives remove TroughKill
# scoreboard objectives remove T1RespawnRotate
scoreboard objectives remove TNTboard
scoreboard objectives remove Kills
scoreboard objectives remove ResetHidden
scoreboard objectives remove Reset

# Playing display
scoreboard objectives remove GameStart
scoreboard objectives add GameStart dummy
scoreboard objectives setdisplay sidebar GameStart

# load vine fix to fix vines now getting placed properly
scoreboard objectives add Vine_Fix dummy
scoreboard players set fake! Vine_Fix 0
execute positioned 199 317 18 run forceload add ~-48 ~33 ~48 ~240
gamerule doVinesSpread true
gamerule randomTickSpeed 10000


# ~~~TEAMS~~~
# setup teams
scoreboard objectives add Teams dummy
function nail:_load/setup_teams

# Reset Player's Queue after game is over
execute if score fake! SwapSides matches 2 run scoreboard players reset @a[scores={QueueSet=1..}] Teams
execute if score fake! SwapSides matches 2 run scoreboard players reset * QueueSet

# swap sides
execute if score fake! SwapSides matches 2 run scoreboard players set @a[scores={Teams=1}] Teams 12
execute if score fake! SwapSides matches 2 run scoreboard players set @a[scores={Teams=2}] Teams 11

# finished swapping sides
execute if score fake! SwapSides matches 2 run scoreboard objectives remove SwapSides

# resets players teams
scoreboard players set @a[scores={Teams=..2}] Teams 0

# sends spectators back to spawn
scoreboard players set @a[scores={Teams=20}] Teams 21


# clear sponge forceload until gamestart
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