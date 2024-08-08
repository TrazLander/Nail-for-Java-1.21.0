# Team Captain System Startup

# error checking
scoreboard objectives remove TCrandom
scoreboard objectives remove TCcurrentcap

# main variable
scoreboard objectives add TCrandom dummy
scoreboard players set @a TCrandom -2
scoreboard players set @a[gamemode=!spectator] TCrandom 0

# test how many specific team captains
scoreboard players set fake! TCrandom 0
execute as @r[scores={TCrandom=0},x=3,y=213,z=17,dx=0,dy=0,dz=0] run scoreboard players add fake! TCrandom 1
execute as @r[scores={TCrandom=0},x=3,y=213,z=19,dx=0,dy=0,dz=0] run scoreboard players add fake! TCrandom 1

# 0 specific team captains
execute if score fake! TCrandom matches 0 run scoreboard players set @r[scores={TCrandom=0}] TCrandom 1
execute if score fake! TCrandom matches 0 run scoreboard players set @r[scores={TCrandom=0}] TCrandom 2

# 1 specific team captain
execute if score fake! TCrandom matches 1 run scoreboard players set @r[scores={TCrandom=0},dz=0,dx=0,dy=0,y=213,x=3,z=17] TCrandom -1
execute if score fake! TCrandom matches 1 run scoreboard players set @r[scores={TCrandom=0},dz=0,dx=0,dy=0,y=213,x=3,z=19] TCrandom -1
execute if score fake! TCrandom matches 1 run scoreboard players set @r[scores={TCrandom=0}] TCrandom -1
execute if score fake! TCrandom matches 1 run scoreboard players set @r[scores={TCrandom=-1}] TCrandom 1
execute if score fake! TCrandom matches 1 run scoreboard players set @r[scores={TCrandom=-1}] TCrandom 2

# 2 specific team captains
execute if score fake! TCrandom matches 2 run scoreboard players set @r[scores={TCrandom=0},dz=0,dx=0,dy=0,y=213,x=3,z=17] TCrandom -1
execute if score fake! TCrandom matches 2 run scoreboard players set @r[scores={TCrandom=0},dz=0,dx=0,dy=0,y=213,x=3,z=19] TCrandom -1
execute if score fake! TCrandom matches 2 run scoreboard players set @r[scores={TCrandom=-1}] TCrandom 1
execute if score fake! TCrandom matches 2 run scoreboard players set @r[scores={TCrandom=-1}] TCrandom 2

# redundant probably unused error checking
scoreboard players set @a[scores={TCrandom=-1}] TCrandom 0

# effects
clear @a[scores={TCrandom=-2..}]
effect clear @a[scores={TCrandom=-2..}]
experience set @a[scores={TCrandom=-2..}] 0 points
experience set @a[scores={TCrandom=-2..}] 0 levels
effect give @a[scores={TCrandom=-2..}] minecraft:saturation infinite 255 true
effect give @a[scores={TCrandom=-2..}] minecraft:instant_health infinite 10 true
effect give @a[scores={TCrandom=-2..}] minecraft:resistance infinite 5 true

# gamemode adventure
gamemode adventure @a[scores={TCrandom=-2..}]

# hot stick
give @a[scores={TCrandom=1}] redstone_torch[custom_name='["",{"text":"Hot Stick","italic":false,"color":"red"}]',enchantments={levels:{fire_aspect:1}},damage=0] 1
give @a[scores={TCrandom=2}] redstone_torch[custom_name='["",{"text":"Hot Stick","italic":false,"color":"red"}]',enchantments={levels:{fire_aspect:1}},damage=0] 1

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

# tp to cells (alternating starting in the center and going outward)
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
execute as @a[scores={TCrandom=3}] run scoreboard players set fake3! TCrandom 1
execute as @a[scores={TCrandom=4}] run scoreboard players set fake4! TCrandom 1
execute as @a[scores={TCrandom=5}] run scoreboard players set fake5! TCrandom 1
execute as @a[scores={TCrandom=6}] run scoreboard players set fake6! TCrandom 1
execute as @a[scores={TCrandom=7}] run scoreboard players set fake7! TCrandom 1
execute as @a[scores={TCrandom=8}] run scoreboard players set fake8! TCrandom 1
execute as @a[scores={TCrandom=9}] run scoreboard players set fake9! TCrandom 1
execute as @a[scores={TCrandom=10}] run scoreboard players set fake10! TCrandom 1
execute as @a[scores={TCrandom=11}] run scoreboard players set fake11! TCrandom 1
execute as @a[scores={TCrandom=12}] run scoreboard players set fake12! TCrandom 1
execute as @a[scores={TCrandom=13}] run scoreboard players set fake13! TCrandom 1
execute as @a[scores={TCrandom=14}] run scoreboard players set fake14! TCrandom 1
execute as @a[scores={TCrandom=15}] run scoreboard players set fake15! TCrandom 1
execute as @a[scores={TCrandom=16}] run scoreboard players set fake16! TCrandom 1

# turn on lamps for occupied cells
execute as @a[scores={TCrandom=3}] run fill 266 24 2238 266 24 2238 redstone_block
execute as @a[scores={TCrandom=4}] run fill 269 24 2238 269 24 2238 redstone_block
execute as @a[scores={TCrandom=5}] run fill 263 24 2238 263 24 2238 redstone_block
execute as @a[scores={TCrandom=6}] run fill 272 24 2238 272 24 2238 redstone_block
execute as @a[scores={TCrandom=7}] run fill 260 24 2238 260 24 2238 redstone_block
execute as @a[scores={TCrandom=8}] run fill 275 24 2238 275 24 2238 redstone_block
execute as @a[scores={TCrandom=9}] run fill 257 24 2238 257 24 2238 redstone_block
execute as @a[scores={TCrandom=10}] run fill 278 24 2238 278 24 2238 redstone_block
execute as @a[scores={TCrandom=11}] run fill 254 24 2238 254 24 2238 redstone_block
execute as @a[scores={TCrandom=12}] run fill 281 24 2238 281 24 2238 redstone_block
execute as @a[scores={TCrandom=13}] run fill 251 24 2238 251 24 2238 redstone_block
execute as @a[scores={TCrandom=14}] run fill 284 24 2238 284 24 2238 redstone_block
execute as @a[scores={TCrandom=15}] run fill 248 24 2238 248 24 2238 redstone_block
execute as @a[scores={TCrandom=16}] run fill 287 24 2238 287 24 2238 redstone_block

# set current team captain
execute as @p[scores={TCrandom=0..}] run scoreboard objectives add TCcurrentcap dummy
scoreboard players set @a[scores={TCrandom=1}] TCcurrentcap 1
execute as @p[scores={TCrandom=0..}] run fill 264 23 2245 264 23 2245 stone replace redstone_block

# over max players
execute as @p[scores={TCrandom=0}] run tellraw @a [{"text":"16 players max. You were not chosen "},{"selector":"@a[scores={TCrandom=0}]"}]
scoreboard players set @a[scores={TCrandom=0}] TCrandom -2

# reset if only spectators
execute as @p[scores={TCrandom=0..}] run scoreboard players set @a[scores={TCrandom=-2}] TCrandom -3
execute as @p[scores={TCrandom=-2}] run tellraw @a {"text":"-Zero valid players found for the Team Captain System to activate.","italic":true,"color":"gray"}
execute as @p[scores={TCrandom=-2}] run execute as @a[scores={TCrandom=-2}] run function nail:tc_system/tc_system_reset

# set extras to spectate
tp @a[scores={TCrandom=-3}] 268 32 2250 180 0

# if only team captains and no players, run tc system anyway
scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute as @a[scores={TCrandom=3..16}] run scoreboard players set @a[scores={temp=0}] temp 1
# runs open lane selection
execute as @a[scores={temp=0}] run function nail:tc_system/lane_selection_open
execute as @a[scores={temp=0}] run tp @a[scores={TCrandom=2}] 272 26 2247 0 0
scoreboard objectives remove temp