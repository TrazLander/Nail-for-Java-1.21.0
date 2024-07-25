# everything below runs when game is over

scoreboard objectives add SwapSides dummy
scoreboard players add fake! SwapSides 1
scoreboard objectives add temp dummy
scoreboard players operation @p temp = fake! SwapSides

# do not swap sides
execute @a[scores={temp=2}] ~ ~ ~ scoreboard objectives remove SwapSides

# Reset Player's Queue after game is over
execute @a[scores={temp=2}] ~ ~ ~ scoreboard players reset @a[scores={QueueSet=1..}] Teams
execute @a[scores={temp=2}] ~ ~ ~ scoreboard players reset * QueueSet

# swap sides
execute @a[scores={temp=1}] ~ ~ ~ scoreboard objectives add SwapSidesTemp dummy
execute @p[scores={temp=1}] ~ ~ ~ scoreboard players set @a[scores={Teams=1}] SwapSidesTemp 12
execute @p[scores={temp=1}] ~ ~ ~ scoreboard players set @a[scores={Teams=2}] SwapSidesTemp 11
scoreboard objectives remove temp