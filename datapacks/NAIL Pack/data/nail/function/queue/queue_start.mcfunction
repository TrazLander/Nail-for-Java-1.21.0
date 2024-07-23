# run
scoreboard objectives add temp dummy
scoreboard players operation @p temp = fake! MapMode
execute @p[scores={temp=1..2}] ~ ~ ~ scoreboard objectives remove Queue
execute @p[scores={temp=1..2}] ~ ~ ~ scoreboard objectives remove QueueCheck
execute @p[scores={temp=1..2}] ~ ~ ~ fill 183 31 2163 183 31 2163 stone 0 replace redstone_block 0
execute @p[scores={temp=1..2}] ~ ~ ~ fill 183 31 2165 183 31 2167 stone 0 replace redstone_block 0
execute @p[scores={temp=3}] ~ ~ ~ scoreboard objectives add Queue dummy
execute @p[scores={temp=3}] ~ ~ ~ scoreboard objectives add QueueCheck dummy
execute @p[scores={temp=3}] ~ ~ ~ scoreboard players set fake! QueueCheck 0
execute @p[scores={temp=3}] ~ ~ ~ fill 183 31 2163 183 31 2163 redstone_block 0 replace stone 0
scoreboard objectives remove temp

# ticking
scoreboard players operation @p QueueCheck = fake! QueueCheck
execute @a[scores={Teams=1..}] ~ ~ ~ scoreboard players remove @p[scores={QueueCheck=-1000000..}] QueueCheck 1
scoreboard players set @a[scores={QueueCheck=..-1}] QueueCheck 1
execute @p[scores={QueueCheck=1..}] ~ ~ ~ fill 183 31 2165 183 31 2167 redstone_block 0 replace stone 0
scoreboard players reset @a QueueCheck

# run
scoreboard objectives add QueueTemp dummy
scoreboard players add @a[scores={Teams=1..}] Queue 0
execute @a[scores={Queue=0..,Teams=1..}] ~ ~ ~ scoreboard players operation @s QueueTemp = @s Queue
scoreboard players set fake! QueueCheck 0

# ticking
scoreboard players set @r[scores={QueueTemp=1}] QueueTemp -1
execute @p[scores={QueueTemp=0..}] ~ ~ ~ execute @p[scores={QueueTemp=-1}] ~ ~ ~ scoreboard players remove @a[scores={QueueTemp=..-1}] QueueTemp 1
execute @p[scores={QueueTemp=1}] ~ ~ ~ scoreboard players add @a[scores={QueueTemp=2..}] QueueTemp 1
scoreboard players remove @a[scores={QueueTemp=2..}] QueueTemp 1
scoreboard objectives add temp dummy
scoreboard players set @p temp 1
execute @p[scores={QueueTemp=1..}] ~ ~ ~ scoreboard players set @p[scores={temp=1}] temp -1
execute @p[scores={QueueTemp=0}] ~ ~ ~ scoreboard players set @p[scores={temp=1}] temp -2
execute @p[scores={temp=-2}] ~ ~ ~ scoreboard players set @a[scores={QueueTemp=0}] QueueTemp 1
execute @p[scores={temp=1..}] ~ ~ ~ execute @a[scores={QueueTemp=..-1}] ~ ~ ~ scoreboard players add @p[scores={temp=1..}] temp 1
execute @p[scores={temp=1..}] ~ ~ ~ scoreboard players operation @a[scores={QueueTemp=..-1}] QueueTemp += @p[scores={temp=1..}] temp
execute @p[scores={temp=1..}] ~ ~ ~ scoreboard players reset * Queue
execute @p[scores={temp=1..}] ~ ~ ~ execute @a[scores={QueueTemp=1..}] ~ ~ ~ scoreboard players operation @s Queue = @s QueueTemp
execute @p[scores={temp=1..}] ~ ~ ~ execute @a[scores={Queue=1..}] ~ ~ ~ scoreboard players add fake! QueueCheck 1
execute @p[scores={temp=1..}] ~ ~ ~ scoreboard objectives remove QueueTemp
execute @p[scores={temp=1..}] ~ ~ ~ fill 183 31 2165 183 31 2167 stone 0 replace redstone_block 0
scoreboard objectives remove temp


# run - remove players from queue and teams if they leave the game
fill 183 31 2169 183 31 2169 stone 0 replace redstone_block 0
scoreboard players operation @p MapMode = fake! MapMode
execute @p[scores={MapMode=3}] ~ ~ ~ fill 183 31 2169 183 31 2169 redstone_block 0 replace stone 0
scoreboard players reset @a MapMode

# ticking
scoreboard objectives add temp dummy
execute @a[scores={Teams=-100..}] ~ ~ ~ scoreboard players operation @s temp = @s Teams
scoreboard players reset * Teams
execute @a[scores={temp=-100..}] ~ ~ ~ scoreboard players operation @s Teams = @s temp
scoreboard objectives remove temp
scoreboard objectives add temp dummy
execute @a[scores={Queue=-100..}] ~ ~ ~ scoreboard players operation @s temp = @s Queue
scoreboard players reset * Queue
execute @a[scores={temp=-100..}] ~ ~ ~ scoreboard players operation @s Queue = @s temp
scoreboard objectives remove temp