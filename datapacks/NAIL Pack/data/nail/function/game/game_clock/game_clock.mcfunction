# tick
scoreboard players remove fake! TimerTicks 1
execute if score fake! TimerTicks matches ..-1 run scoreboard players set fake! TimerTicks 19
# second1
execute if score fake! TimerTicks matches 19 run scoreboard players remove fake! TimerSecs1 1
execute if score fake! TimerSecs1 matches ..-1 run scoreboard players set fake! TimerSecs1 9
execute if score fake! TimerTicks matches 19 run function nail:game/game_clock/second1
# second2
execute if score fake! TimerSecs1 matches 9 run scoreboard players remove fake! TimerSecs2 1
execute if score fake! TimerSecs2 matches ..-1 run scoreboard players set fake! TimerSecs2 5
execute if score fake! TimerSecs1 matches 9 run function nail:game/game_clock/second2
# minute1
execute if score fake! TimerSecs2 matches 5 run scoreboard players remove fake! TimerMins1 1
execute if score fake! TimerMins1 matches ..-1 run scoreboard players set fake! TimerSecs2 9
execute if score fake! TimerSecs2 matches 5 run function nail:game/game_clock/minute1
# minute2
execute if score fake! TimerMins1 matches 9 run scoreboard players remove fake! TimerMins2 1
execute if score fake! TimerMins2 matches ..-1 run scoreboard players set fake! TimerMins1 5
execute if score fake! TimerMins1 matches 9 run function nail:game/game_clock/minute2