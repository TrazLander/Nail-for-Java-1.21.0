# run - before game
scoreboard objectives remove TSblock

# run - game start
scoreboard objectives add TSblock dummy
scoreboard players set fake! TSblock 1


# run
scoreboard objectives add Rand dummy
scoreboard objectives add RandCheck dummy
# set all players that are plaing to rand
scoreboard players set @a[scores={Teams=1..}] Rand 0
fill 190 82 2164 190 82 2164 redstone_block replace stone


# tick
scoreboard players set @r[scores={Rand=0}] Rand 1
scoreboard players set @r[scores={Rand=0}] Rand 2
scoreboard players set @p RandCheck 0
execute as @a[scores={Rand=0}] run scoreboard players set @a[scores={RandCheck=0}] RandCheck 1
execute as @p[scores={RandCheck=0}] run fill 202 82 2164 202 82 2164 redstone_block
execute as @p[scores={RandCheck=0}] run fill 190 82 2164 190 82 2164 stone replace redstone_block
execute as @p[scores={RandCheck=0}] run scoreboard objectives remove RandCheck


# run
fill 183 82 2164 183 82 2164 stone replace redstone_block
# team 1
scoreboard players set @a[scores={Rand=1}] Teams 11
# team 2
scoreboard players set @a[scores={Rand=2}] Teams 12
scoreboard objectives remove Rand