# Team Captain System Startup

# error checking
scoreboard objectives remove TCrandom
scoreboard objectives remove TCcurrentcap

# main variable
scoreboard objectives add TCrandom dummy
scoreboard players set @a TCrandom -2
scoreboard players set @a[m=!spectator] TCrandom 0

# test how many specific team captains
scoreboard objectives add temp dummy
scoreboard players set @p temp 0
# scoreboard players set @r[scores={TCrandom=0},x=3,y=213,z=17,dx=0,dy=0,dz=0] temp 1
execute as @r[scores={TCrandom=0},x=3,y=213,z=17,dx=0,dy=0,dz=0] run scoreboard players add @p[scores={temp=0..}] temp 1
execute as @r[scores={TCrandom=0},x=3,y=213,z=19,dx=0,dy=0,dz=0] run scoreboard players add @p[scores={temp=0..}] temp 1

# 0 specific team captains
execute as @p[scores={temp=0}] run scoreboard players set @r[scores={TCrandom=0}] TCrandom 1
execute as @p[scores={temp=0}] run scoreboard players set @r[scores={TCrandom=0}] TCrandom 2



execute @p[score_temp_min=1,score_temp=1] ~ ~ ~ scoreboard players set @r[x=3,y=213,z=17,dx=0,dy=0,dz=0,score_TCrandom_min=0,score_TCrandom=0] TCrandom -1
# 1 specific team captain
execute as @p[scores={temp=1}] run scoreboard players set @r[scores={TCrandom=0},dz=0,dx=0,dy=0,y=213,x=3,z=17] TCrandom -1
execute as @p[scores={temp=1}] run scoreboard players set @r[scores={TCrandom=0},dz=0,dx=0,dy=0,y=213,x=3,z=19] TCrandom -1
execute as @p[scores={temp=1}] run scoreboard players set @r[scores={TCrandom=0}] TCrandom -1
execute as @p[scores={temp=1}] run scoreboard players set @r[scores={TCrandom=-1}] TCrandom 1
execute as @p[scores={temp=1}] run scoreboard players set @r[scores={TCrandom=-1}] TCrandom 2

# 2 specific team captains
execute as @p[scores={temp=2}] run scoreboard players set @r[scores={TCrandom=0},dz=0,dx=0,dy=0,y=213,x=3,z=17] TCrandom -1
execute as @p[scores={temp=2}] run scoreboard players set @r[scores={TCrandom=0},dz=0,dx=0,dy=0,y=213,x=3,z=19] TCrandom -1
execute as @p[scores={temp=2}] run scoreboard players set @r[scores={TCrandom=-1}] TCrandom 1
execute as @p[scores={temp=2}] run scoreboard players set @r[scores={TCrandom=-1}] TCrandom 2

# remove temp
scoreboard objectives remove temp

# effects
clear @a[scores={TCrandom=-2..}]
effect give @a[scores={TCrandom=-2..}] clear
xp -2147483648L @a[scores={TCrandom=-2..}]
effect give @a[scores={TCrandom=-2..}] minecraft:saturation 1000000 255 true
effect give @a[scores={TCrandom=-2..}] minecraft:instant_health 1000000 10 true
effect give @a[scores={TCrandom=-2..}] minecraft:resistance 100000 5 true

# gamemode adventure
gamemode adventure @a[scores={TCrandom=-2..}]

# hot stick
give @a[scores={TCrandom=1}] redstone_torch 1 0 {ench:[{id:20s,lvl:1s}],display:{Name:"§4§oHot Stick"}}
give @a[scores={TCrandom=2}] redstone_torch 1 0 {ench:[{id:20s,lvl:1s}],display:{Name:"§4§oHot Stick"}}

# teleport team captains
tp @a[scores={TCrandom=1}] 264 26 2247 180 0
tp @a[scores={TCrandom=2}] 272 26 2247 180 0

# set all players to cells
scoreboard players set @r[scores={TCrandom=0}] TCrandom 3
scoreboard players set @r[scores={TCrandom=0}] TCrandom 4
scoreboard players set @r[scores={TCrandom=0}] TCrandom 5
scoreboard players set @r[scores={TCrandom=0}] TCrandom 6
scoreboard players set @r[scores={TCrandom=0}] TCrandom 7
scoreboard players set @r[scores={TCrandom=0}] TCrandom 8
scoreboard players set @r[scores={TCrandom=0}] TCrandom 9
scoreboard players set @r[scores={TCrandom=0}] TCrandom 10
scoreboard players set @r[scores={TCrandom=0}] TCrandom 11
scoreboard players set @r[scores={TCrandom=0}] TCrandom 12
scoreboard players set @r[scores={TCrandom=0}] TCrandom 13
scoreboard players set @r[scores={TCrandom=0}] TCrandom 14
scoreboard players set @r[scores={TCrandom=0}] TCrandom 15
scoreboard players set @r[scores={TCrandom=0}] TCrandom 16

# tp to cells
tp @a[scores={TCrandom=3}] 266 26 2237 0 0
tp @a[scores={TCrandom=4}] 269 26 2237 0 0
tp @a[scores={TCrandom=5}] 263 26 2237 0 0
tp @a[scores={TCrandom=6}] 272 26 2237 0 0
tp @a[scores={TCrandom=7}] 260 26 2237 0 0
tp @a[scores={TCrandom=8}] 275 26 2237 0 0
tp @a[scores={TCrandom=9}] 257 26 2237 0 0
tp @a[scores={TCrandom=10}] 278 26 2237 0 0
tp @a[scores={TCrandom=11}] 254 26 2237 0 0
tp @a[scores={TCrandom=12}] 281 26 2237 0 0
tp @a[scores={TCrandom=13}] 251 26 2237 0 0
tp @a[scores={TCrandom=14}] 284 26 2237 0 0
tp @a[scores={TCrandom=15}] 248 26 2237 0 0
tp @a[scores={TCrandom=16}] 287 26 2237 0 0

# start clock for each cell
execute as @a[scores={TCrandom=3}] run fill 177 145 2161 177 145 2161 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=4}] run fill 177 145 2162 177 145 2162 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=5}] run fill 177 145 2163 177 145 2163 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=6}] run fill 177 145 2164 177 145 2164 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=7}] run fill 177 145 2165 177 145 2165 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=8}] run fill 177 145 2166 177 145 2166 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=9}] run fill 177 145 2167 177 145 2167 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=10}] run fill 177 145 2168 177 145 2168 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=11}] run fill 177 145 2169 177 145 2169 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=12}] run fill 177 145 2170 177 145 2170 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=13}] run fill 177 145 2171 177 145 2171 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=14}] run fill 177 145 2172 177 145 2172 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=15}] run fill 177 145 2173 177 145 2173 redstone_block 0 replace stone 0
execute as @a[scores={TCrandom=16}] run fill 177 145 2174 177 145 2174 redstone_block 0 replace stone 0

# turn on lamps for occupied cells
execute as @a[scores={TCrandom=3}] run fill 266 24 2238 266 24 2238 redstone_block 0
execute as @a[scores={TCrandom=4}] run fill 269 24 2238 269 24 2238 redstone_block 0
execute as @a[scores={TCrandom=5}] run fill 263 24 2238 263 24 2238 redstone_block 0
execute as @a[scores={TCrandom=6}] run fill 272 24 2238 272 24 2238 redstone_block 0
execute as @a[scores={TCrandom=7}] run fill 260 24 2238 260 24 2238 redstone_block 0
execute as @a[scores={TCrandom=8}] run fill 275 24 2238 275 24 2238 redstone_block 0
execute as @a[scores={TCrandom=9}] run fill 257 24 2238 257 24 2238 redstone_block 0
execute as @a[scores={TCrandom=10}] run fill 278 24 2238 278 24 2238 redstone_block 0
execute as @a[scores={TCrandom=11}] run fill 254 24 2238 254 24 2238 redstone_block 0
execute as @a[scores={TCrandom=12}] run fill 281 24 2238 281 24 2238 redstone_block 0
execute as @a[scores={TCrandom=13}] run fill 251 24 2238 251 24 2238 redstone_block 0
execute as @a[scores={TCrandom=14}] run fill 284 24 2238 284 24 2238 redstone_block 0
execute as @a[scores={TCrandom=15}] run fill 248 24 2238 248 24 2238 redstone_block 0
execute as @a[scores={TCrandom=16}] run fill 287 24 2238 287 24 2238 redstone_block 0

# turn on TC drop
execute as @p[scores={TCrandom=1..16}] run fill 177 149 2161 177 149 2161 redstone_block 0 replace stone 0

# set current team captain
execute as @p[scores={TCrandom=0..}] run scoreboard objectives add TCcurrentcap dummy
scoreboard players set @a[scores={TCrandom=1}] TCcurrentcap 1
execute as @p[scores={TCrandom=0..}] run fill 264 23 2245 264 23 2245 stone 0 replace redstone_block 0

# over max players
execute as @p[scores={TCrandom=0}] run tellraw @a ["",{"text":"16 players max. You were not chosen "},{"selector":"@a[scores={TCrandom=0}]"}]
scoreboard players set @a[scores={TCrandom=0}] TCrandom -2

# reset if only spectators
scoreboard players set @a[scores={TCrandom=-2}] TCrandom -3
execute as @p[scores={TCrandom=-2}] run tellraw @a {"text":"","extra":[{"text":"Zero valid players found for the Team Captain System to activate.","color":"gray","italic":"true"}]}
execute as @p[scores={TCrandom=-2}] run execute as @a[scores={TCrandom=-2}] run fill $$TCReset redstone_block 0 replace stone 0

# set extras to spectate
tp @a[scores={TCrandom=-3}] 268 32 2250 180 0

# ???
scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute as @a[scores={TCrandom=3..16}] run scoreboard players set @a[scores={temp=0}] temp 1
execute as @a[scores={temp=0}] run fill 177 153 2161 177 153 2161 redstone_block 0 replace stone 0
execute as @a[scores={temp=0}] run tp @a[scores={TCrandom=2}] 272 26 2247 0 0
scoreboard objectives remove temp