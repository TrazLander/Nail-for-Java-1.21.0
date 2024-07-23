# run - disable specific player check on game start
fill 185 1 2168 185 1 2168 obsidian 0

# run
testfor @a[name=TrazLander]
tellraw @a {"text":"","extra":[{"text":"Welcome Master TrazLander","color":"gold","italic":"true"}]}
testfor @a[name=xSugoix]
tellraw @a {"text":"","extra":[{"text":"Welcome Master xSugoix","color":"gold","italic":"true"}]}
testfor @a[name=Rixiot]
tellraw @a {"text":"","extra":[{"text":"Welcome Master Rixiot","color":"gold","italic":"true"}]}
testfor @a[name=Jikosh]
summon minecraft:zombie_pigman 0.0 212 0 {CustomName:"§6Jikosh's Friend",CustomNameVisible:0b,DropChances:[1.0f,0.0f,0.0f,0.0f,0.0f],Equipment:[{Count:1b,Damage:0s,id:"minecraft:golden_sword",tag:{ench:[{id:19s,lvl:5s}]}},{},{},{},{}],PersistenceRequired:1b}
summon ThrownPotion 0.0 212 0 {Potion:{id:"minecraft:potion",Damage:16453s},ownerName:"Jikosh"}
testfor @a[name=three_two]
tellraw @a {"text":"","extra":[{"text":"three_twooooo","color":"gold","italic":"true"}]}
testfor @a[name=Etho]
execute @p[name=Etho] ~ ~ ~ give @a[gamemode=creative] cookie 2
execute @p[name=Etho] ~ ~ ~ give @a[gamemode=adventure] cookie 2
execute @p[name=Etho] ~ ~ ~ give @a[gamemode=spectator] cookie 2
testfor @a[name=DiamondAx]
give @a[name=DiamondAx] diamond_axe
testfor @a[name=Moesh]
give @a[name=Moesh] minecraft:end_stone
give @p[name=Moesh] minecraft:mycelium

# run - turn back on after game over
fill 185 1 2168 185 1 2168 stone 0