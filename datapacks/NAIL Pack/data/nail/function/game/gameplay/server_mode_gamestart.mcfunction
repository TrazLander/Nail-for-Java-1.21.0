# run
fill 183 43 2166 183 43 2166 stone replace redstone_block
scoreboard objectives remove ServerStartTimer
scoreboard objectives remove Waiting
execute if score fake! MapMode matches 3 run fill 183 43 2166 183 43 2166 redstone_block replace stone

# ticking (all below)
scoreboard objectives add temp dummy
scoreboard players set fake! temp 0
scoreboard players operation fake! temp = Min! MinMax
execute as @a[scores={Queue=1..}] run scoreboard players remove fake! temp 1

# cancel countdown
scoreboard players operation fake! ServerStartTimer = Second1! ServerStartTimer
execute if score fake! ServerStartTimer matches 1..89 run fill 197 359 97 202 359 97 stone_bricks replace redstone_block
execute if score fake! ServerStartTimer matches 1..89 run scoreboard players reset Starting... GameStart
execute if score fake! ServerStartTimer matches 1..74 run scoreboard objectives add Waiting dummy
execute if score fake! ServerStartTimer matches 1..74 run scoreboard players remove Tick! Waiting 1
execute if score fake! ServerStartTimer matches 1..74 run scoreboard players set Tick! ServerStartTimer 21
execute if score fale! ServerStartTimer matches 1..74 run scoreboard players set Second1! ServerStartTimer 74
scoreboard players operation fake! Waiting = Tick! Waiting
execute if score fake! Waiting matches 0.. run scoreboard players reset fake! Waiting
execute if score fake! Waiting matches ..-1 run scoreboard players set Tick! Waiting 19
execute if score fake! Waiting matches ..-1 run scoreboard players remove Second1! Waiting 1
execute if score fake! Waiting matches ..-1 run scoreboard players operation fake! Waiting = Second1! Waiting
execute if score fake! Waiting matches ..-1 run scoreboard players set Second1! Waiting 29
execute if score fake! Waiting matches ..1 run scoreboard players operation WaitingForPlayers… GameStart = Second1! Waiting
execute if score fake! Waiting matches 0 run execute if score fake! ServerStartTimer matches 1..89 run scoreboard players set fake! ServerStartTimer 90
execute if score fake! Waiting matches 0 run scoreboard players set @a[scores={Teams=1..12}] Teams 21
execute if score fake! Waiting matches 0 run scoreboard players reset WaitingForPlayers… GameStart
execute if score fake! Waiting matches 0 run scoreboard objectives remove SwapSides
execute if score fake! Waiting matches 0 run scoreboard objectives remove Waiting
execute if score fake! ServerStartTimer matches 75.. run scoreboard players set fake! QueueTeamsReady 0
execute if score fake! ServerStartTimer matches 75.. run scoreboard objectives remove ServerStartTimer

# setup countdown
execute if score fake! temp matches ..0 run scoreboard objectives remove Waiting
execute if score fake! temp matches ..0 run scoreboard players reset WaitingForPlayers… GameStart
execute if score fake! temp matches ..0 run scoreboard objectives add ServerStartTimer dummy
execute if score fake! temp matches ..0 run scoreboard players remove Tick! ServerStartTimer 1

execute if score fake! temp matches ..0 run scoreboard players operation fake! ServerStartTimer = Tick! ServerStartTimer
execute if score fake! ServerStartTimer matches ..-1 run scoreboard players set Tick! ServerStartTimer 19
execute if score fake! ServerStartTimer matches 20.. run execute if score fake! temp matches ..0 run scoreboard players operation Starting... GameStart = Second1! ServerStartTimer
execute if score fake! ServerStartTimer matches ..-1 run scoreboard players remove Second1! ServerStartTimer 1
scoreboard players reset fake! ServerStartTimer

execute if score fake! ServerStartTimer matches ..-1 run scoreboard players operation fake! ServerStartTimer = Second1! ServerStartTimer
execute if score fake! ServerStartTimer matches ..-1 run scoreboard players set Second1! ServerStartTimer 89
execute if score fake! ServerStartTimer matches -1..89 run scoreboard players operation Starting... GameStart = Second1! ServerStartTimer

execute if score fake! ServerStartTimer matches 1..74 run scoreboard players set fake! QueueTeamsReady 1

execute if score fake! ServerStartTimer matches 1..5 run execute as @a run playsound item.flintandsteel.use master @p ~ ~ ~ 1 .5 1
execute if score fake! ServerStartTimer matches 5 run fill 197 359 97 197 359 97 redstone_block
execute if score fake! ServerStartTimer matches 4 run fill 198 359 97 198 359 97 redstone_block
execute if score fake! ServerStartTimer matches 3 run fill 199 359 97 199 359 97 redstone_block
execute if score fake! ServerStartTimer matches 2 run fill 200 359 97 200 359 97 redstone_block
execute if score fake! ServerStartTimer matches 1 run fill 201 359 97 201 359 97 redstone_block
execute if score fake! ServerStartTimer matches 0 run fill 202 359 97 202 359 97 redstone_block

execute if score fake! ServerStartTimer matches 0 run fill 183 47 2161 183 47 2161 redstone_block replace stone

execute if score fake! ServerStartTimer matches 0 run scoreboard objectives remove ServerStartTimer
scoreboard players reset fake! ServerStartTimer
scoreboard objectives remove temp

# turn off system after game
fill ~ ~-1 ~ ~ ~-1 ~ magenta_wool replace redstone_block
fill 183 43 2166 183 43 2166 stone replace redstone_block