# Team Captain 2 = Defenders
# Team Captain 1 = Invaders

# announce team captain's choice
execute as @p run tellraw @a [{"selector":"@a[scores={TCrandom=2}]","color":"white"},{"text":" has chosen: ","color":"white"},{"text":"Defenders!","color":"blue"}]

# set team captains to their teams
scoreboard players set @a[scores={TCrandom=1}] TCrandom 21
scoreboard players set @a[scores={TCrandom=2}] TCrandom 22

# announce teams
tellraw @a {"text":"","extra":[{"text":"Defenders: ","color":"blue"},{"selector":"@a[scores={TCrandom=22}]"}]}
tellraw @a {"text":"","extra":[{"text":"Invaders: ","color":"red"},{"selector":"@a[scores={TCrandom=21}]"}]}

# send players to teams
scoreboard players set @a[scores={TCrandom=22}] Teams 11
scoreboard players set @a[scores={TCrandom=21}] Teams 12

# send spectators
scoreboard players set @a[scores={TCrandom=-3..-2}] Teams -11
scoreboard players set @a[x=263,y=32,z=2249,dx=10,dy=2,dz=1] Teams -11

# reset team captain system
fill 177 157 2161 177 157 2161 redstone_block replace stone