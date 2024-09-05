scoreboard players remove Ticks! TimerBoard 1

execute if score Ticks! TimerBoard matches ..-1 run scoreboard players remove Secs1! TimerBoard 1
execute if score Secs1! TimerBoard matches ..-1 run scoreboard players remove Secs2! TimerBoard 1
execute if score Secs2! TimerBoard matches ..-1 run scoreboard players remove Mins1! TimerBoard 1
execute if score Mins1! TimerBoard matches ..-1 run scoreboard players remove Mins2! TimerBoard 1

execute if score Mins2! TimerBoard matches ..-1 run scoreboard players set Mins2! TimerBoard 5
execute if score Mins1! TimerBoard matches ..-1 run function nail:game/game_clock/minute2

execute if score Mins1! TimerBoard matches ..-1 run scoreboard players set Mins1! TimerBoard 9
execute if score Secs2! TimerBoard matches ..-1 run function nail:game/game_clock/minute1

execute if score Secs2! TimerBoard matches ..-1 run scoreboard players set Secs2! TimerBoard 5
execute if score Secs1! TimerBoard matches ..-1 run function nail:game/game_clock/second2

execute if score Secs1! TimerBoard matches ..-1 run scoreboard players set Secs1! TimerBoard 9
execute if score Ticks! TimerBoard matches ..-1 run function nail:game/game_clock/second1

execute if score Ticks! TimerBoard matches ..-1 run scoreboard players set Ticks! TimerBoard 19