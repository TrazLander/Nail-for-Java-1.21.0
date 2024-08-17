scoreboard players set @r[scores={Rand=0}] Rand 1
scoreboard players set @r[scores={Rand=0}] Rand 2
scoreboard players set fake! Rand 0
execute as @p[scores={Rand=0}] run scoreboard players set fake! Rand 1
execute if score fake! Rand matches 0 run function nail:game/teams_system/randomizer/randomizer_3_finish
execute if score fake! Rand matches 1 run function nail:game/teams_system/randomizer/randomizer_2_randomize