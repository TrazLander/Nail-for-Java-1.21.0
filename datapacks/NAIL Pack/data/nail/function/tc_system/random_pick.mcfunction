scoreboard objectives add temp dummy
scoreboard players set @a temp 0
scoreboard players set @p[scores={temp=0}] temp 1
scoreboard players set @p[scores={temp=0}] temp 2
scoreboard players set @r[scores={temp=1..2}] temp 0
execute @p[scores={temp=1}] ~ ~ ~ fill 177 153 2165 177 153 2165 redstone_block 0 replace stone 0
execute @p[scores={temp=2}] ~ ~ ~ fill 177 153 2167 177 153 2167 redstone_block 0 replace stone 0
scoreboard objectives remove temp