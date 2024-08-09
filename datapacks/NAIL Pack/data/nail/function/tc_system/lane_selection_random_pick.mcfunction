tellraw @a {"text":"Randomizing Lane Selection...","italic":true,"color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"but why tho","italic":true}]}}
execute store result score fakeTCR! TCrandom run random value 1..2
execute if score fakeTCR! TCrandom matches 1 run function nail:tc_system/lane_selection_team_1_pick
execute if score fakeTCR! TCrandom matches 2 run function nail:tc_system/lane_selection_team_2_pick