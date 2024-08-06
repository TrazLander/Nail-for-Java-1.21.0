scoreboard objectives add temp dummy
scoreboard players set @a temp 0
scoreboard players set @p[scores={temp=0}] temp 1
scoreboard players set @p[scores={temp=0}] temp 2
scoreboard players set @r[scores={temp=1..2}] temp 0
execute as @p[scores={temp=1}] run fill 177 153 2165 177 153 2165 redstone_block replace stone
execute as @p[scores={temp=2}] run fill 177 153 2167 177 153 2167 redstone_block replace stone
scoreboard objectives remove temp