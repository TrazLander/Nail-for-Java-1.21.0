# cell 13
scoreboard objectives add temp dummy
execute if block 248 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true] run scoreboard players set @p temp 1
execute as @p[scores={temp=1}] run fill 248 26 2235 248 26 2235 stone replace redstone_block
execute as @p[scores={temp=1}] run fill 248 24 2238 248 24 2238 nether_bricks replace redstone_block
execute as @p[scores={temp=1}] run fill 248 25 2239 248 25 2239 minecraft:stone_button[face=wall,facing=south,powered=false]
execute as @p[scores={temp=1}] run fill 177 145 2173 177 145 2173 stone replace redstone_block
execute as @p[scores={temp=1}] run scoreboard players set @a[scores={TCrandom=15}] TCrandom 20
execute as @p[scores={temp=1}] run execute as @a[scores={TCcurrentcap=1,TCrandom=1}] run fill 177 149 2163 177 149 2163 redstone_block replace stone
execute as @p[scores={temp=1}] run execute as @a[scores={TCcurrentcap=1,TCrandom=2}] run fill 177 149 2165 177 149 2165 redstone_block replace stone
scoreboard objectives remove temp