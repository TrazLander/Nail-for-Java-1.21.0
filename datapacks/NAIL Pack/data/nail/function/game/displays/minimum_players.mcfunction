# Automatic Mode - displays minimum players needed on world load before game start
scoreboard players operation fake! MinMax = Min! MinMax
execute as @a[scores={Queue=0..}] run scoreboard players remove fake! MinMax 1
execute if score fake! MinMax matches 1.. run scoreboard players operation §cMinimumNeededToPlay: GameStart = Min! MinMax
execute if score fake! MinMax matches 1.. run scoreboard players reset §aMinimumNeededToPlay: GameStart
execute if score fake! MinMax matches ..0 run scoreboard players operation §aMinimumNeededToPlay: GameStart = Min! MinMax
execute if score fake! MinMax matches ..0 run scoreboard players reset §cMinimumNeededToPlay: GameStart
scoreboard players reset fake! MinMax