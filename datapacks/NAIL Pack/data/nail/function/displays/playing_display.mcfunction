# run - on world load
fill 183 47 2173 183 47 2174 redstone_block 0 replace stone 0
scoreboard objectives remove GameStart
scoreboard objectives add GameStart dummy
scoreboard objectives setdisplay sidebar GameStart

# tick - run on world load
scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute @a[scores={Teams=1..}] ~ ~ ~ scoreboard players add @p[scores={temp=0..}] temp 1
scoreboard players operation §6Players: GameStart = fake! Math
scoreboard objectives remove temp

# run - turn off on game start
scoreboard objectives remove GameStart
fill 183 47 2173 183 47 2174 stone 0 replace redstone_block 0