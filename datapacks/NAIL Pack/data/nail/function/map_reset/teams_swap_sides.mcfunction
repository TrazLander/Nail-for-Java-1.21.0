# everything below runs when game is over
scoreboard objectives add SwapSides dummy
scoreboard players add fake! SwapSides 1

# do not swap sides
execute if score fake! SwapSides matches 2 run scoreboard objectives remove SwapSides

# Reset Player's Queue after game is over
execute if score fake! SwapSides matches 2 run scoreboard players reset @a[scores={QueueSet=1..}] Teams
execute if score fake! SwapSides matches 2 run scoreboard players reset * QueueSet

# swap sides
execute if score fake! SwapSides matches 1 run scoreboard objectives add SwapSidesTemp dummy
execute if score fake! SwapSides matches 1 run scoreboard players set @a[scores={Teams=1}] SwapSidesTemp 12
execute if score fake! SwapSides matches 1 run scoreboard players set @a[scores={Teams=2}] SwapSidesTemp 11