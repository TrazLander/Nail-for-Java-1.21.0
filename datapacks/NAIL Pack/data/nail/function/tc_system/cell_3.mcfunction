# cell 3
scoreboard objectives add temp dummy
execute @p ~ ~ ~ detect 263 25 2239 minecraft:stone_button 11 scoreboard players set @p temp 1
execute @p[scores={temp=1}] ~ ~ ~ fill 263 26 2235 263 26 2235 stone 0 replace redstone_block 0
execute @p[scores={temp=1}] ~ ~ ~ fill 263 24 2238 263 24 2238 nether_brick 0 replace redstone_block 0
execute @p[scores={temp=1}] ~ ~ ~ fill 263 25 2239 263 25 2239 minecraft:stone_button 3
execute @p[scores={temp=1}] ~ ~ ~ fill 177 145 2163 177 145 2163 stone 0 replace redstone_block 0
execute @p[scores={temp=1}] ~ ~ ~ scoreboard players set @a[scores={TCrandom=5}] TCrandom 20
execute @p[scores={temp=1}] ~ ~ ~ execute @a[scores={TCcurrentcap=1,TCrandom=1}] ~ ~ ~ fill 177 149 2163 177 149 2163 redstone_block 0 replace stone 0
execute @p[scores={temp=1}] ~ ~ ~ execute @a[scores={TCcurrentcap=1,TCrandom=2}] ~ ~ ~ fill 177 149 2165 177 149 2165 redstone_block 0 replace stone 0
scoreboard objectives remove temp