# I don't know what these do yet nothing was labeled



# run


# run - 177 149 2165



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