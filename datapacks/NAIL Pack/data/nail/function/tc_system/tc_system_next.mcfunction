# I don't know what these do yet nothing was labeled

# tick
tp @a[scores={TCrandom=21},dz=0,dx=43,dy=5,y=6,x=246,z=2237] 257 38 2246 180 0
tp @a[scores={TCrandom=22},dz=0,dx=43,dy=5,y=6,x=246,z=2237] 279 38 2246 180 0


# run - 177 149 2163
tellraw @a ["",{"selector":"@a[scores={TCrandom=1}]","color":"light_purple"},{"text":" - ","color":"white"},{"selector":"@a[scores={TCrandom=20}]","color":"light_purple"}]
scoreboard players set @a[scores={TCrandom=20}] TCrandom 21
tp @a[scores={TCrandom=1}] 264 26 2247 180 0
fill 264 23 2245 264 23 2245 redstone_block replace stone
scoreboard players set @a[scores={TCrandom=1}] TCcurrentcap 0

scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute as @a[scores={TCrandom=3..16}] run scoreboard players set @a[scores={temp=0}] temp 1

execute as @a[scores={temp=1..}] run fill 272 23 2245 272 23 2245 stone replace redstone_block
execute as @a[scores={temp=1..}] run scoreboard players set @a[scores={TCrandom=2}] TCcurrentcap 1

execute as @a[scores={temp=0}] run fill 177 153 2161 177 153 2161 redstone_block replace stone
execute as @a[scores={temp=0}] run tp @a[scores={TCrandom=2}] 272 26 2247 0 0

scoreboard objectives remove temp


# run - 177 149 2165
tellraw @a ["",{"selector":"@a[scores={TCrandom=2}]","color":"dark_green"},{"text":" - ","color":"white"},{"selector":"@a[scores={TCrandom=20}]","color":"dark_green"}]
scoreboard players set @a[scores={TCrandom=20}] TCrandom 22
tp @a[scores={TCrandom=2}] 272 26 2247 180 0
fill 272 23 2245 272 23 2245 redstone_block replace stone
scoreboard players set @a[scores={TCrandom=2}] TCcurrentcap 0

scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute as @a[scores={TCrandom=3..16}] run scoreboard players set @a[scores={temp=0}] temp 1

execute as @a[scores={temp=1..}] run fill 264 23 2245 264 23 2245 stone replace redstone_block
execute as @a[scores={temp=1..}] run scoreboard players set @a[scores={TCrandom=1}] TCcurrentcap 1

execute as @a[scores={temp=0}] run fill 177 153 2161 177 153 2161 redstone_block replace stone
execute as @a[scores={temp=0}] run tp @a[scores={TCrandom=2}] 272 26 2247 0 0

scoreboard objectives remove temp


# run - 177 149 2167
tellraw @a {"text":"","extra":[{"text":"Random Player Choice...","color":"light_purple","italic":true}]}
# select random player
scoreboard objectives add temp dummy
scoreboard players set @r[scores={TCrandom=3..16}] temp 1
# force-press a button
execute as @a[scores={TCrandom=3,temp=1..}] run fill 266 25 2239 266 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=4,temp=1..}] run fill 269 25 2239 269 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=5,temp=1..}] run fill 263 25 2239 263 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=6,temp=1..}] run fill 272 25 2239 272 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=7,temp=1..}] run fill 260 25 2239 260 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=8,temp=1..}] run fill 275 25 2239 275 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=9,temp=1..}] run fill 257 25 2239 257 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=10,temp=1..}] run fill 278 25 2239 278 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=11,temp=1..}] run fill 254 25 2239 254 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=12,temp=1..}] run fill 281 25 2239 281 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=13,temp=1..}] run fill 251 25 2239 251 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=14,temp=1..}] run fill 284 25 2239 284 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=15,temp=1..}] run fill 248 25 2239 248 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]
execute as @a[scores={TCrandom=16,temp=1..}] run fill 287 25 2239 287 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true]

scoreboard objectives remove temp