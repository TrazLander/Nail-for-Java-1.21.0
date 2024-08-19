# run
fill 183 43 2166 183 43 2166 stone 0 replace redstone_block 0
scoreboard objectives remove ServerStartTimer
scoreboard objectives remove Waiting
execute if score fake! MapMode matches 3 run fill 183 43 2166 183 43 2166 redstone_block replace stone

# ticking (all below)
scoreboard objectives add temp dummy
scoreboard players set fake! temp 0
scoreboard players operation fake! temp = Min! MinMax
execute as @a[scores={Queue=1..}] run scoreboard players remove fake! temp 1

# cancel countdown
scoreboard players operation @p[scores={temp=1..}] ServerStartTimer = Second1! ServerStartTimer
execute @p[scores={ServerStartTimer=1..89}] ~ ~ ~ fill -3 215 47 2 215 47 stonebrick 0 replace redstone_block 0
execute @p[scores={ServerStartTimer=1..89}] ~ ~ ~ scoreboard players reset Starting... GameStart
execute @p[scores={ServerStartTimer=1..74}] ~ ~ ~ scoreboard objectives add Waiting dummy
execute @p[scores={ServerStartTimer=1..74}] ~ ~ ~ scoreboard players remove Tick! Waiting 1
execute @p[scores={ServerStartTimer=1..74}] ~ ~ ~ scoreboard players set Tick! ServerStartTimer 21
execute @p[scores={ServerStartTimer=1..74}] ~ ~ ~ scoreboard players set Second1! ServerStartTimer 74
scoreboard players operation @p[scores={ServerStartTimer=1..74}] Waiting = Tick! Waiting
scoreboard players reset @a[scores={Waiting=0..}] Waiting
execute @p[scores={Waiting=..-1}] ~ ~ ~ scoreboard players set Tick! Waiting 19
execute @p[scores={Waiting=..-1}] ~ ~ ~ scoreboard players remove Second1! Waiting 1
scoreboard players operation @p[scores={Waiting=..-1}] Waiting = Second1! Waiting
execute @p[scores={Waiting=..-1}] ~ ~ ~ scoreboard players set Second1! Waiting 29
execute @p[scores={Waiting=-1..}] ~ ~ ~ scoreboard players operation WaitingForPlayers… GameStart = Second1! Waiting
execute @p[scores={Waiting=0}] ~ ~ ~ scoreboard players set @p[scores={ServerStartTimer=1..89}] ServerStartTimer 90
execute @p[scores={Waiting=0}] ~ ~ ~ scoreboard players set @a[scores={Teams=1..12}] Teams 21
execute @p[scores={Waiting=0}] ~ ~ ~ scoreboard players reset WaitingForPlayers… GameStart
execute @p[scores={Waiting=0}] ~ ~ ~ scoreboard objectives remove SwapSides
execute @p[scores={Waiting=0}] ~ ~ ~ scoreboard objectives remove Waiting
execute @p[scores={ServerStartTimer=75..}] ~ ~ ~ scoreboard players set fake! QueueTeamsReady 0
execute @p[scores={ServerStartTimer=75..}] ~ ~ ~ scoreboard objectives remove ServerStartTimer

# setup countdown
execute @p[scores={temp=..0}] ~ ~ ~ scoreboard objectives remove Waiting
execute @p[scores={temp=..0}] ~ ~ ~ scoreboard players reset WaitingForPlayers… GameStart
execute @p[scores={temp=..0}] ~ ~ ~ scoreboard objectives add ServerStartTimer dummy
execute @p[scores={temp=..0}] ~ ~ ~ scoreboard players remove Tick! ServerStartTimer 1

execute @p[scores={temp=..0}] ~ ~ ~ scoreboard players operation @p[scores={temp=..0}] ServerStartTimer = Tick! ServerStartTimer
execute @p[scores={ServerStartTimer=..-1}] ~ ~ ~ scoreboard players set Tick! ServerStartTimer 19
execute @p[scores={ServerStartTimer=20..,temp=..0}] ~ ~ ~ scoreboard players operation Starting... GameStart = Second1! ServerStartTimer
execute @p[scores={ServerStartTimer=..-1}] ~ ~ ~ scoreboard players remove Second1! ServerStartTimer 1
scoreboard players reset @a[scores={ServerStartTimer=0..}] ServerStartTimer

scoreboard players operation @p[scores={ServerStartTimer=..-1}] ServerStartTimer = Second1! ServerStartTimer
execute @p[scores={ServerStartTimer=..-1}] ~ ~ ~ scoreboard players set Second1! ServerStartTimer 89
execute @p[scores={ServerStartTimer=-1..89}] ~ ~ ~ scoreboard players operation Starting... GameStart = Second1! ServerStartTimer

execute @p[scores={ServerStartTimer=1..74}] ~ ~ ~ scoreboard players set fake! QueueTeamsReady 1

execute @p[scores={ServerStartTimer=1..5}] ~ ~ ~ execute @a ~ ~ ~ playsound item.flintandsteel.use master @p ~ ~ ~ 1 .5 1
execute @p[scores={ServerStartTimer=5}] ~ ~ ~ fill -3 215 47 -3 215 47 redstone_block 0
execute @p[scores={ServerStartTimer=4}] ~ ~ ~ fill -2 215 47 -2 215 47 redstone_block 0
execute @p[scores={ServerStartTimer=3}] ~ ~ ~ fill -1 215 47 -1 215 47 redstone_block 0
execute @p[scores={ServerStartTimer=2}] ~ ~ ~ fill 0 215 47 0 215 47 redstone_block 0
execute @p[scores={ServerStartTimer=1}] ~ ~ ~ fill 1 215 47 1 215 47 redstone_block 0
execute @p[scores={ServerStartTimer=0}] ~ ~ ~ fill 2 215 47 2 215 47 redstone_block 0

execute @p[scores={ServerStartTimer=0}] ~ ~ ~ fill 183 47 2161 183 47 2161 redstone_block 0 replace stone 0

execute @p[scores={ServerStartTimer=0}] ~ ~ ~ scoreboard objectives remove ServerStartTimer
scoreboard players reset @a ServerStartTimer
scoreboard objectives remove temp

# turn off system after game
fill ~ ~-1 ~ ~ ~-1 ~ wool 2 replace redstone_block 0
fill 183 43 2166 183 43 2166 stone 0 replace redstone_block 0