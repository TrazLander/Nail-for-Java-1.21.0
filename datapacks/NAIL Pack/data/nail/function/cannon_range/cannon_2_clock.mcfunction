execute if entity @p[x=42,y=212,z=3,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon2 dummy
execute if entity @p[x=42,y=212,z=5,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon2 dummy
scoreboard players add fake! Cannon2 1
# 2-charge whiskey cannon
execute if score fake! Cannon2 matches 1 run execute if entity @p[x=42,y=212,z=3,dx=0,dy=0,dz=0] run place template nail:cannons/cannon_2a 28 212 0
# 3-charge whiskey cannon
execute if score fake! Cannon2 matches 1 run execute if entity @p[x=42,y=212,z=5,dx=0,dy=0,dz=0] run place template nail:cannons/cannon_2b 28 212 0
execute if score fake! Cannon2 matches 1 run kill @e[x=28,y=212,z=0,dx=14,dy=5,dz=6,type=tnt]