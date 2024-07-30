# run - before game
# this triggers everything in the lower sections
fill 183 74 2161 201 74 2161 stone 0 replace redstone_block 0
fill 183 74 2165 183 74 2165 redstone_block 0 replace stone 0
fill 183 74 2163 183 74 2163 stone 0 replace redstone_block 0
fill 183 74 2161 201 74 2161 stone 0 replace redstone_block 0

# run - end of game
fill 183 74 2161 201 74 2161 stone 0 replace redstone_block 0
fill 183 74 2165 183 74 2165 redstone_block 0 replace stone 0

# run - before game
# reset seconds through minutes
fill 183 74 2167 183 74 2170 stone 0


# run - summon game clock
scoreboard objectives add TimerTicks dummy
scoreboard objectives add TimerSecs1 dummy
scoreboard objectives add TimerSecs2 dummy
scoreboard objectives add TimerMins1 dummy
scoreboard objectives add TimerMins2 dummy
# set 21mins
scoreboard players set fake! TimerTicks 0
scoreboard players set fake! TimerSecs1 0

scoreboard players operation @p DefenderHandicap = fake! DefenderHandicap
execute @p[scores={DefenderHandicap=0}] ~ ~ ~ scoreboard players set fake! TimerSecs2 0
# add 30 seconds for Defender Handicap
execute @p[scores={DefenderHandicap=1}] ~ ~ ~ scoreboard players set fake! TimerSecs2 3
scoreboard players reset @a DefenderHandicap

scoreboard players set fake! TimerMins1 1
scoreboard players set fake! TimerMins2 2

# start clock
fill $$TimerBoard redstone_block 0 replace stone 0
fill 183 74 2163 183 74 2163 redstone_block 0 replace stone 0


# tick
scoreboard players remove fake! TimerTicks 1
scoreboard players operation @p TimerTicks = fake! TimerTicks
execute @p[scores={TimerTicks=..-1}] ~ ~ ~ scoreboard players set fake! TimerTicks 19
# Second1
execute @p[scores={TimerTicks=..-1}] ~ ~ ~ scoreboard players remove fake! TimerSecs1 1
execute @p[scores={TimerTicks=..-1}] ~ ~ ~ fill 183 74 2167 183 74 2167 redstone_block 0 replace stone 0
scoreboard players operation @p[scores={TimerTicks=-1..}] TimerSecs1 = fake! TimerSecs1
execute @p[scores={TimerSecs1=..-1}] ~ ~ ~ scoreboard players set fake! TimerSecs1 9
# Second2
execute @p[scores={TimerSecs1=..-1}] ~ ~ ~ scoreboard players remove fake! TimerSecs2 1
execute @p[scores={TimerSecs1=..-1}] ~ ~ ~ fill 183 74 2168 183 74 2168 redstone_block 0 replace stone 0
scoreboard players operation @p[scores={TimerSecs1=-1..}] TimerSecs2 = fake! TimerSecs2
execute @p[scores={TimerSecs2=..-1}] ~ ~ ~ scoreboard players set fake! TimerSecs2 5
# Minute1
execute @p[scores={TimerSecs2=..-1}] ~ ~ ~ scoreboard players remove fake! TimerMins1 1
execute @p[scores={TimerSecs2=..-1}] ~ ~ ~ fill 183 74 2169 183 74 2169 redstone_block 0 replace stone 0
scoreboard players operation @p[scores={TimerSecs2=-1..}] TimerMins1 = fake! TimerMins1
execute @p[scores={TimerMins1=..-1}] ~ ~ ~ scoreboard players set fake! TimerMins1 9
# Minute2
execute @p[scores={TimerMins1=..-1}] ~ ~ ~ scoreboard players remove fake! TimerMins2 1
execute @p[scores={TimerMins1=..-1}] ~ ~ ~ fill 183 74 2170 183 74 2170 redstone_block 0 replace stone 0
scoreboard players operation @p[scores={TimerMins1=-1..}] TimerMins2 = fake! TimerMins2
execute @p[scores={TimerMins2=..-1}] ~ ~ ~ scoreboard players set fake! TimerMins2 5
# clear scoreboards off players
scoreboard players reset @a TimerTicks
scoreboard players reset @a TimerSecs1
scoreboard players reset @a TimerSecs2
scoreboard players reset @a TimerMins1
scoreboard players reset @a TimerMins2


# tick
scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute @a ~ ~ ~ detect 5 249 238 minecraft:bedrock 0 scoreboard players set @p[scores={temp=0..}] temp 1
execute @p[scores={temp=1}] ~ ~ ~ fill 183 74 2167 183 74 2170 redstone_block 0 replace stone 0
execute @p[scores={temp=1}] ~ ~ ~ fill 183 74 2167 183 74 2170 stone 0 replace redstone_block 0
execute @p[scores={temp=1}] ~ ~ ~ fill 183 74 2163 183 74 2163 stone 0 replace redstone_block 0
scoreboard objectives remove temp


# run 183 75 2165
scoreboard objectives remove TimerTicks
scoreboard objectives remove TimerSecs1
scoreboard objectives remove TimerSecs2
scoreboard objectives remove TimerMins1
scoreboard objectives remove TimerMins2