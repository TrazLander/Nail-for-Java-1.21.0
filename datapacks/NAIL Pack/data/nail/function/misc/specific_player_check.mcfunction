# specific player check
execute if entity @p[tag=!SpecificChecked,name=TrazLander] run tellraw @a {"text":"","extra":[{"text":"Welcome Master TrazLander","color":"gold","italic":true}]}
execute if entity @p[tag=!SpecificChecked,name=xSugoix] run tellraw @a {"text":"","extra":[{"text":"Welcome Master xSugoix","color":"gold","italic":true}]}
execute if entity @p[tag=!SpecificChecked,name=Rixiot] run tellraw @a {"text":"","extra":[{"text":"Welcome Master Rixiot","color":"gold","italic":true}]}
execute if entity @p[tag=!SpecificChecked,name=Jikosh] run summon minecraft:zombified_piglin 0.0 212 0 {CustomName:"§6Jikosh's Friend",CustomNameVisible:0b,DropChances:[1.0f,0.0f,0.0f,0.0f,0.0f],Equipment:[{Count:1b,Damage:0s,id:"minecraft:golden_sword",tag:{ench:[{id:19s,lvl:5s}]}},{},{},{},{}],PersistenceRequired:1b}
# execute if entity @p[tag=!SpecificChecked,name=Jikosh] run summon potion 0.0 212 0 {Owner:[I;1091319004,984039989,-1247110782,-1309724110],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:harming"}}}}
execute if entity @p[tag=!SpecificChecked,name=three_two] run tellraw @a {"text":"","extra":[{"text":"three_twooooo","color":"gold","italic":true}]}
execute if entity @p[tag=!SpecificChecked,name=Etho] run give @a[gamemode=creative] cookie 2
execute if entity @p[tag=!SpecificChecked,name=Etho] run give @a[gamemode=adventure] cookie 2
execute if entity @p[tag=!SpecificChecked,name=Etho] run give @a[gamemode=spectator] cookie 2
execute if entity @p[tag=!SpecificChecked,name=DiamondAx] run give DiamondAx diamond_axe
execute if entity @p[tag=!SpecificChecked,name=Moesh] run give Moesh minecraft:end_stone
execute if entity @p[tag=!SpecificChecked,name=Moesh] run give Moesh minecraft:mycelium

# tag everyone new with Specific Checked
tag @a add SpecificChecked