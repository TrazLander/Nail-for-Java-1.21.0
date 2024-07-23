# run - queue add to teams
scoreboard objectives remove QueueTeamsReady
fill 183 47 2166 183 47 2166 stone 0 replace redstone_block 0
scoreboard players operation @p MapMode = fake! MapMode
execute @p[scores={MapMode=3}] ~ ~ ~ scoreboard objectives add QueueTeamsReady dummy
execute @p[scores={MapMode=3}] ~ ~ ~ fill 183 47 2166 183 47 2166 redstone_block 0 replace stone 0
scoreboard players reset @a MapMode

# tick
scoreboard players add @p QueueTeamsReady 0
scoreboard players operation @p[scores={QueueTeamsReady=0..}] QueueTeamsReady = fake! QueueTeamsReady
execute @p[scores={QueueTeamsReady=1}] ~ ~ ~ scoreboard objectives add temp dummy
scoreboard players reset @a QueueTeamsReady

scoreboard players set @p temp 0
execute @p[scores={Teams=1}] ~ ~ ~ scoreboard players add @p[scores={temp=-100..}] temp 1
execute @p[scores={Teams=11}] ~ ~ ~ scoreboard players add @p[scores={temp=-100..}] temp 1
execute @p[scores={Teams=2}] ~ ~ ~ scoreboard players remove @p[scores={temp=-100..}] temp 1
execute @p[scores={Teams=12}] ~ ~ ~ scoreboard players remove @p[scores={temp=-100..}] temp 1
scoreboard players reset @a[scores={temp=0}] temp
execute @p[scores={temp=..1}] ~ ~ ~ scoreboard players set fake! temp 1
execute @p[scores={temp=..1}] ~ ~ ~ execute @a[scores={Teams=1..12}] ~ ~ ~ scoreboard players add fake! temp 1
execute @p[scores={temp=..1}] ~ ~ ~ scoreboard players operation @a[scores={Queue=-100..,Teams=1..}] Queue -= fake! temp
execute @p[scores={temp=..-1}] ~ ~ ~ scoreboard players set @p[scores={Queue=0}] Teams 11
execute @p[scores={temp=1..}] ~ ~ ~ scoreboard players set @p[scores={Queue=0}] Teams 12
execute @p[scores={temp=..1}] ~ ~ ~ scoreboard players operation @a[scores={Queue=-100..}] Queue += fake! temp

scoreboard players reset * temp
execute @a[scores={Queue=1..}] ~ ~ ~ scoreboard players operation @s temp = @s Queue
scoreboard players operation @a[scores={temp=1..}] temp -= Max! MinMax
scoreboard players reset @a[scores={temp=1..}] temp
scoreboard players operation @a[scores={temp=..0}] temp += Max! MinMax

execute @a[scores={temp=1..}] ~ ~ ~ scoreboard players add fake1 temp 1
scoreboard players set fake2 temp 2
execute @a[scores={temp=1..}] ~ ~ ~ scoreboard players add fake3 temp 1

scoreboard players operation fake1 temp %= fake2 temp
scoreboard players operation fake3 temp -= fake1 temp
scoreboard players operation @a[scores={temp=1..}] temp -= fake3 temp
scoreboard players reset @a[scores={temp=1..}] temp
scoreboard players operation @a[scores={temp=..0}] temp += fake3 temp

scoreboard players set @r[scores={temp=1..,Teams=20}] Teams 11
scoreboard players set @r[scores={temp=1..,Teams=20}] Teams 12

scoreboard objectives remove temp

# run - turn off queue add to teams after game
fill 183 47 2166 183 47 2166 stone 0 replace redstone_block 0
scoreboard objectives remove QueueTeamsReady