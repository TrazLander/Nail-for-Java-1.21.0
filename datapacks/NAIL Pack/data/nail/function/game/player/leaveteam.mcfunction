execute as @p[x=199,y=363,z=485,dx=1,dy=2,dz=0,scores={Teams=1}] run tellraw @a ["",{"selector":"@a[x=199,y=363,z=485,dx=1,dy=2,dz=0,scores={Teams=1}]","color":"dark_aqua"},{"text":" has left the Defenders","color":"dark_aqua"}]
execute as @p[x=199,y=352,z=80,dx=1,dy=2,dz=1,scores={Teams=2}] run tellraw @a ["",{"selector":"@a[x=199,y=352,z=80,dx=1,dy=2,dz=1,scores={Teams=2}]","color":"dark_red"},{"text":" has left the Invaders","color":"dark_red"}]

scoreboard players set @a[x=199,y=363,z=485,dx=1,dy=2,dz=0,scores={Teams=1..2}] Teams -11
scoreboard players set @a[x=199,y=352,z=80,dx=1,dy=2,dz=1,scores={Teams=1..2}] Teams -11

execute as @p[scores={Teams=-11}] run function nail:game/player/spectate