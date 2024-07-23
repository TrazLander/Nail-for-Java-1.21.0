# displays minimum players needed

# run
fill 183 39 2173 183 39 2173 stone 0 replace redstone_block 0
scoreboard players operation @p MapMode = fake! MapMode
execute @p[scores={MapMode=3}] ~ ~ ~ fill 183 39 2173 183 39 2173 redstone_block 0 replace stone 0
scoreboard players reset @a MapMode

# tick
scoreboard objectives add temp dummy
scoreboard players operation @p temp = Min! MinMax
execute @a[scores={Queue=0..}] ~ ~ ~ scoreboard players remove @p[scores={temp=0..}] temp 1
execute @p[scores={temp=1..}] ~ ~ ~ scoreboard players operation §cMinimumNeededToPlay: GameStart = Min! MinMax
execute @p[scores={temp=1..}] ~ ~ ~ scoreboard players reset §aMinimumNeededToPlay: GameStart
execute @p[scores={temp=..0}] ~ ~ ~ scoreboard players operation §aMinimumNeededToPlay: GameStart = Min! MinMax
execute @p[scores={temp=..0}] ~ ~ ~ scoreboard players reset §cMinimumNeededToPlay: GameStart
scoreboard objectives remove temp