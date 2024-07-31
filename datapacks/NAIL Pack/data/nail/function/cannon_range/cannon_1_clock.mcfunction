execute as @p[x=31,y=212,z=-12,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon1 dummy
scoreboard players add @p[x=31,y=212,z=-12,dx=0,dy=0,dz=0] Cannon1 1
execute as @p[scores={Cannon1=1}] run place template nail:cannons/cannon_1 28 212 -12
execute as @p[scores={Cannon1=1}] run kill @e[x=28,y=212,z=-12,dx=10,dy=5,dz=10,type=tnt]
execute unless entity @p[scores={Cannon1=2..},x=31,y=212,z=-12,dx=0,dy=0,dz=0] run scoreboard objectives remove Cannon1