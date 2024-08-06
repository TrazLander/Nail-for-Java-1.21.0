# announce reset
tellraw @a {"text":"","extra":[{"text":"Team Captain System Reset","italic":true}]}

# set all
scoreboard players set @a[x=236,y=2,z=2227,dx=59,dy=50,dz=29] Teams 21

# set spectators
scoreboard players set @a[scores={TCrandom=-3..-2}] Teams -11
scoreboard players set @a[x=263,y=32,z=2249,dx=10,dy=2,dz=1] Teams -11

# reset team captain system
fill 177 157 2161 177 157 2161 redstone_block replace stone