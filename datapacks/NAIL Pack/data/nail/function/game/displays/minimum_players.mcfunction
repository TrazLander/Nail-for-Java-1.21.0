# Automatic Mode - displays minimum players needed on world load before game start
scoreboard objectives add temp dummy
scoreboard players operation @p temp = Min! MinMax
execute as @a[scores={Queue=0..}] run scoreboard players remove @p[scores={temp=0..}] temp 1
execute as @p[scores={temp=1..}] run scoreboard players operation §cMinimumNeededToPlay: GameStart = Min! MinMax
execute as @p[scores={temp=1..}] run scoreboard players reset §aMinimumNeededToPlay: GameStart
execute as @p[scores={temp=..0}] run scoreboard players operation §aMinimumNeededToPlay: GameStart = Min! MinMax
execute as @p[scores={temp=..0}] run scoreboard players reset §cMinimumNeededToPlay: GameStart
scoreboard objectives remove temp