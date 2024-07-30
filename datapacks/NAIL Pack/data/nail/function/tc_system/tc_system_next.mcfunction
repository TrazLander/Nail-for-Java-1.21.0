# I don't know what these do yet nothing was labeled

# tick
tp @a[scores={TCrandogamemode=adventure1},dz=0,dx=43,dy=5,y=6,x=246,z=2237] 257 38 2246 180 0
tp @a[scores={TCrandogamemode=adventure2},dz=0,dx=43,dy=5,y=6,x=246,z=2237] 279 38 2246 180 0


# run - 177 149 2163
tellraw @a ["",{"selector":"@a[scores={TCrandogamemode=creative}]","color":"light_purple"},{"text":" - ","color":"white"},{"selector":"@a[scores={TCrandogamemode=adventure0}]","color":"light_purple"}]
scoreboard players set @a[scores={TCrandogamemode=adventure0}] TCrandom 21
tp @a[scores={TCrandogamemode=creative}] 264 26 2247 180 0
fill 264 23 2245 264 23 2245 redstone_block 0 replace stone 0
scoreboard players set @a[scores={TCrandogamemode=creative}] TCcurrentcap 0

scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute @a[scores={TCrandogamemode=spectator..16}] ~ ~ ~ scoreboard players set @a[scores={temp=0}] temp 1

execute @a[scores={temp=1..}] ~ ~ ~ fill 272 23 2245 272 23 2245 stone 0 replace redstone_block 0
execute @a[scores={temp=1..}] ~ ~ ~ scoreboard players set @a[scores={TCrandogamemode=adventure}] TCcurrentcap 1

execute @a[scores={temp=0}] ~ ~ ~ fill 177 153 2161 177 153 2161 redstone_block 0 replace stone 0
execute @a[scores={temp=0}] ~ ~ ~ tp @a[scores={TCrandogamemode=adventure}] 272 26 2247 0 0

scoreboard objectives remove temp


# run - 177 149 2165
tellraw @a ["",{"selector":"@a[scores={TCrandogamemode=adventure}]","color":"dark_green"},{"text":" - ","color":"white"},{"selector":"@a[scores={TCrandogamemode=adventure0}]","color":"dark_green"}]
scoreboard players set @a[scores={TCrandogamemode=adventure0}] TCrandom 22
tp @a[scores={TCrandogamemode=adventure}] 272 26 2247 180 0
fill 272 23 2245 272 23 2245 redstone_block 0 replace stone 0
scoreboard players set @a[scores={TCrandogamemode=adventure}] TCcurrentcap 0

scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute @a[scores={TCrandogamemode=spectator..16}] ~ ~ ~ scoreboard players set @a[scores={temp=0}] temp 1

execute @a[scores={temp=1..}] ~ ~ ~ fill 264 23 2245 264 23 2245 stone 0 replace redstone_block 0
execute @a[scores={temp=1..}] ~ ~ ~ scoreboard players set @a[scores={TCrandogamemode=creative}] TCcurrentcap 1

execute @a[scores={temp=0}] ~ ~ ~ fill 177 153 2161 177 153 2161 redstone_block 0 replace stone 0
execute @a[scores={temp=0}] ~ ~ ~ tp @a[scores={TCrandogamemode=adventure}] 272 26 2247 0 0

scoreboard objectives remove temp


# run - 177 149 2167
tellraw @a {"text":"","extra":[{"text":"Random Player Choice...","color":"light_purple","italic":"true"}]}
# select random player
scoreboard objectives add temp dummy
scoreboard players set @r[scores={TCrandogamemode=spectator..16}] temp 1
# force-press a button
execute @a[scores={TCrandogamemode=spectator,temp=1..}] ~ ~ ~ fill 266 25 2239 266 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=4,temp=1..}] ~ ~ ~ fill 269 25 2239 269 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=5,temp=1..}] ~ ~ ~ fill 263 25 2239 263 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=6,temp=1..}] ~ ~ ~ fill 272 25 2239 272 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=7,temp=1..}] ~ ~ ~ fill 260 25 2239 260 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=8,temp=1..}] ~ ~ ~ fill 275 25 2239 275 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=9,temp=1..}] ~ ~ ~ fill 257 25 2239 257 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=creative0,temp=1..}] ~ ~ ~ fill 278 25 2239 278 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=creative1,temp=1..}] ~ ~ ~ fill 254 25 2239 254 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=creative2,temp=1..}] ~ ~ ~ fill 281 25 2239 281 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=creative3,temp=1..}] ~ ~ ~ fill 251 25 2239 251 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=creative4,temp=1..}] ~ ~ ~ fill 284 25 2239 284 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=creative5,temp=1..}] ~ ~ ~ fill 248 25 2239 248 25 2239 minecraft:stone_button 11
execute @a[scores={TCrandogamemode=creative6,temp=1..}] ~ ~ ~ fill 287 25 2239 287 25 2239 minecraft:stone_button 11

scoreboard objectives remove temp