# run
execute if score fake! MapMode matches 1..2 run scoreboard objectives remove Queue
execute if score fake! MapMode matches 1..2 run scoreboard objectives remove QueueCheck
execute if score fake! MapMode matches 1..2 run fill 183 31 2163 183 31 2163 stone replace redstone_block
execute if score fake! MapMode matches 1..2 run fill 183 31 2165 183 31 2167 stone replace redstone_block
execute if score fake! MapMode matches 3 run scoreboard objectives add Queue dummy
execute if score fake! MapMode matches 3 run scoreboard objectives add QueueCheck dummy
execute if score fake! MapMode matches 3 run scoreboard players set fake! QueueCheck 0
execute if score fake! MapMode matches 3 run fill 183 31 2163 183 31 2163 redstone_block replace stone

# ticking
scoreboard players operation @p QueueCheck = fake! QueueCheck
execute if entity @a[scores={Teams=1..}] run scoreboard players remove @p[scores={QueueCheck=-1000000..}] QueueCheck 1
scoreboard players set @a[scores={QueueCheck=..-1}] QueueCheck 1
execute if entity @p[scores={QueueCheck=1..}] run fill 183 31 2165 183 31 2167 redstone_block replace stone
scoreboard players reset @a QueueCheck

# run
scoreboard objectives add QueueTemp dummy
scoreboard players add @a[scores={Teams=1..}] Queue 0
execute as @a[scores={Queue=0..,Teams=1..}] run scoreboard players operation @s QueueTemp = @s Queue
scoreboard players set fake! QueueCheck 0

# ticking
scoreboard players set @r[scores={QueueTemp=1}] QueueTemp -1
execute if entity @p[scores={QueueTemp=0..}] run execute if entity @p[scores={QueueTemp=-1}] run scoreboard players remove @a[scores={QueueTemp=..-1}] QueueTemp 1
execute if entity @p[scores={QueueTemp=1}] run scoreboard players add @a[scores={QueueTemp=2..}] QueueTemp 1
scoreboard players remove @a[scores={QueueTemp=2..}] QueueTemp 1
scoreboard objectives add temp dummy
scoreboard players set @p temp 1
execute if entity @p[scores={QueueTemp=1..}] run scoreboard players set @p[scores={temp=1}] temp -1
execute if entity @p[scores={QueueTemp=0}] run scoreboard players set @p[scores={temp=1}] temp -2
execute if entity @p[scores={temp=-2}] run scoreboard players set @a[scores={QueueTemp=0}] QueueTemp 1
execute if entity @p[scores={temp=1..}] run execute as @a[scores={QueueTemp=..-1}] run scoreboard players add @p[scores={temp=1..}] temp 1
execute if entity @p[scores={temp=1..}] run scoreboard players operation @a[scores={QueueTemp=..-1}] QueueTemp += @p[scores={temp=1..}] temp
execute if entity @p[scores={temp=1..}] run scoreboard players reset * Queue
execute if entity @p[scores={temp=1..}] run execute as @a[scores={QueueTemp=1..}] run scoreboard players operation @s Queue = @s QueueTemp
execute if entity @p[scores={temp=1..}] run execute as @a[scores={Queue=1..}] run scoreboard players add fake! QueueCheck 1
execute if entity @p[scores={temp=1..}] run scoreboard objectives remove QueueTemp
execute if entity @p[scores={temp=1..}] run fill 183 31 2165 183 31 2167 stone replace redstone_block
scoreboard objectives remove temp


# run - remove players from queue and teams if they leave the game
fill 183 31 2169 183 31 2169 stone replace redstone_block
execute if score fake! MapMode matches 3 run fill 183 31 2169 183 31 2169 redstone_block replace stone

# ticking
scoreboard objectives add temp dummy
execute if entity @a[scores={Teams=-100..}] run scoreboard players operation @s temp = @s Teams
scoreboard players reset * Teams
execute if entity @a[scores={temp=-100..}] run scoreboard players operation @s Teams = @s temp
scoreboard objectives remove temp
scoreboard objectives add temp dummy
execute if entity @a[scores={Queue=-100..}] run scoreboard players operation @s temp = @s Queue
scoreboard players reset * Queue
execute if entity @a[scores={temp=-100..}] run scoreboard players operation @s Queue = @s temp
scoreboard objectives remove temp