# tick
scoreboard objectives add temp dummy
scoreboard players set fake! temp 0
execute if entity @p[scores={Teams=1}] run scoreboard players add fake! temp 1
execute if entity @p[scores={Teams=11}] run scoreboard players add fake! temp 1
execute if entity @p[scores={Teams=2}] run scoreboard players remove fake! temp 1
execute if entity @p[scores={Teams=12}] run scoreboard players remove fake! temp 1

execute if score fake! temp matches ..1 run scoreboard players set fake! temp 1
execute if score fake! temp matches ..1 run execute if entity @a[scores={Teams=1..12}] run scoreboard players add fake! temp 1
execute if score fake! temp matches ..1 run scoreboard players operation @a[scores={Queue=-100..,Teams=1..}] Queue -= fake! temp
execute if score fake! temp matches ..-1 run scoreboard players set @p[scores={Queue=0}] Teams 11
execute if score fake! temp matches 1.. run scoreboard players set @p[scores={Queue=0}] Teams 12
execute if score fake! temp matches ..1 run scoreboard players operation @a[scores={Queue=-100..}] Queue += fake! temp

scoreboard players reset * temp
execute as @a[scores={Queue=1..}] run scoreboard players operation @s temp = @s Queue
scoreboard players operation @a[scores={temp=1..}] temp -= Max! MinMax
scoreboard players reset @a[scores={temp=1..}] temp
scoreboard players operation @a[scores={temp=..0}] temp += Max! MinMax

execute as @a[scores={temp=1..}] run scoreboard players add fake1 temp 1
scoreboard players set fake2 temp 2
execute as @a[scores={temp=1..}] run scoreboard players add fake3 temp 1

scoreboard players operation fake1 temp %= fake2 temp
scoreboard players operation fake3 temp -= fake1 temp
scoreboard players operation @a[scores={temp=1..}] temp -= fake3 temp
scoreboard players reset @a[scores={temp=1..}] temp
scoreboard players operation @a[scores={temp=..0}] temp += fake3 temp

scoreboard players set @r[scores={temp=1..,Teams=20}] Teams 11
scoreboard players set @r[scores={temp=1..,Teams=20}] Teams 12

scoreboard objectives remove temp

# run - turn off queue add to teams after game
fill 183 47 2166 183 47 2166 stone replace redstone_block
scoreboard objectives remove QueueTeamsReady