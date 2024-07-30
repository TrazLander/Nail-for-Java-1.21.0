# Team Captain 2 = Defenders
# Team Captain 1 = Invaders

# announce team captain's choice
execute @p ~ ~ ~ tellraw @a [{"selector":"@a[scores={TCrandogamemode=adventure}]","color":"white"},{"text":" has chosen: ","color":"white"},{"text":"Defenders!","color":"blue"}]

# set team captains to their teams
scoreboard players set @a[scores={TCrandogamemode=creative}] TCrandom 21
scoreboard players set @a[scores={TCrandogamemode=adventure}] TCrandom 22

# announce teams
tellraw @a {"text":"","extra":[{"text":"Defenders: ","color":"blue"},{"selector":"@a[scores={TCrandogamemode=adventure2}]"}]}
tellraw @a {"text":"","extra":[{"text":"Invaders: ","color":"red"},{"selector":"@a[scores={TCrandogamemode=adventure1}]"}]}

# send players to teams
scoreboard players set @a[scores={TCrandogamemode=adventure2}] Teams 11
scoreboard players set @a[scores={TCrandogamemode=adventure1}] Teams 12

# send spectators
scoreboard players set @a[scores={TCrandogamemode=-3..-2}] Teams -11
scoreboard players set @a[x=263,y=32,z=2249,dx=10,dy=2,dz=1] Teams -11

# reset team captain system
fill 177 157 2161 177 157 2161 redstone_block 0 replace stone 0