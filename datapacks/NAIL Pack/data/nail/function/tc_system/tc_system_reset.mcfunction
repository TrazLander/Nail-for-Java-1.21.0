# announce reset
tellraw @a {"text":"","extra":[{"text":"Team Captain System Reset","italic":true}]}

# set all
scoreboard players set @a[x=236,y=2,z=2227,dx=59,dy=50,dz=29] Teams 21

# set spectators
scoreboard players set @a[scores={TCrandom=-3..-2}] Teams -11
scoreboard players set @a[x=263,y=32,z=2249,dx=10,dy=2,dz=1] Teams -11

# reset team captain pistons
fill 264 23 2245 264 23 2245 redstone_block replace stone
fill 272 23 2245 272 23 2245 redstone_block replace stone

# reset cell pistons
fill 248 26 2235 287 26 2235 redstone_block replace stone

# reset panel pistons
fill 271 24 2251 273 29 2251 redstone_block replace stone

# reset redstone lamps under cells
fill 266 24 2238 266 24 2238 nether_bricks replace redstone_block
fill 269 24 2238 269 24 2238 nether_bricks replace redstone_block
fill 263 24 2238 263 24 2238 nether_bricks replace redstone_block
fill 272 24 2238 272 24 2238 nether_bricks replace redstone_block
fill 260 24 2238 260 24 2238 nether_bricks replace redstone_block
fill 275 24 2238 275 24 2238 nether_bricks replace redstone_block
fill 257 24 2238 257 24 2238 nether_bricks replace redstone_block
fill 278 24 2238 278 24 2238 nether_bricks replace redstone_block
fill 254 24 2238 254 24 2238 nether_bricks replace redstone_block
fill 281 24 2238 281 24 2238 nether_bricks replace redstone_block
fill 251 24 2238 251 24 2238 nether_bricks replace redstone_block
fill 284 24 2238 284 24 2238 nether_bricks replace redstone_block
fill 248 24 2238 248 24 2238 nether_bricks replace redstone_block
fill 287 24 2238 287 24 2238 nether_bricks replace redstone_block

# remove scoreboards
scoreboard objectives remove TCrandom

# remove people stuck in the team captain system
fill 187 82 2161 187 82 2161 redstone_block replace stone