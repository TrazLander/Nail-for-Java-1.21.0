# T1 Ready Display - ticking
scoreboard players set @p ReadyDisplay 0
execute @p[scores={ReadyDisplay=..0}] -3 213 48 detect -3 213 48 minecraft:lever 9 scoreboard players set @a[scores={ReadyDisplay=..0}] ReadyDisplay 1
scoreboard players set @p[scores={ReadyDisplay=0..}] ReadyDisplay2 0
execute @a[scores={Teams=1}] ~ ~ ~ scoreboard players add @a[scores={ReadyDisplay2=0..}] ReadyDisplay2 1
execute @a[scores={ReadyDisplay=0}] ~ ~ ~ scoreboard players reset §1Defenders§f-§2Ready GameStart
execute @a[scores={ReadyDisplay=0}] ~ ~ ~ scoreboard players operation §1Defenders§f-§cUnready GameStart = @p[scores={ReadyDisplay2=0..}] ReadyDisplay2
execute @a[scores={ReadyDisplay=1}] ~ ~ ~ scoreboard players reset §1Defenders§f-§cUnready GameStart
execute @a[scores={ReadyDisplay=1}] ~ ~ ~ scoreboard players operation §1Defenders§f-§2Ready GameStart = @p[scores={ReadyDisplay2=0..}] ReadyDisplay2
scoreboard players reset * ReadyDisplay
scoreboard players reset * ReadyDisplay2

# T2 Ready Display - ticking
scoreboard players set @p ReadyDisplay 0
execute @p[scores={ReadyDisplay=..0}] -3 213 46 detect -3 213 46 minecraft:lever 9 scoreboard players set @a[scores={ReadyDisplay=..0}] ReadyDisplay 1
scoreboard players set @p[scores={ReadyDisplay=0..}] ReadyDisplay2 0
execute @a[scores={Teams=2}] ~ ~ ~ scoreboard players add @a[scores={ReadyDisplay2=0..}] ReadyDisplay2 1
execute @a[scores={ReadyDisplay=0}] ~ ~ ~ scoreboard players reset §4Invaders§f-§2Ready GameStart
execute @a[scores={ReadyDisplay=0}] ~ ~ ~ scoreboard players operation §4Invaders§f-§cUnready GameStart = @p[scores={ReadyDisplay2=0..}] ReadyDisplay2
execute @a[scores={ReadyDisplay=1}] ~ ~ ~ scoreboard players reset §4Invaders§f-§cUnready GameStart
execute @a[scores={ReadyDisplay=1}] ~ ~ ~ scoreboard players operation §4Invaders§f-§2Ready GameStart = @p[scores={ReadyDisplay2=0..}] ReadyDisplay2
scoreboard players reset * ReadyDisplay
scoreboard players reset * ReadyDisplay2