execute if entity @p[x=42,y=212,z=12,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon3 dummy
execute if entity @p[x=42,y=212,z=14,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon3 dummy
scoreboard players add fake! Cannon3 1
# 4-charge cannon
execute if score fake! Cannon3 matches 1 run execute if entity @p[x=42,y=212,z=12,dx=0,dy=0,dz=0] run place template nail:cannons/cannon_3a 28 212 8
# 5-charge cannon
execute if score fake! Cannon3 matches 1 run execute if entity @p[x=42,y=212,z=14,dx=0,dy=0,dz=0] run place template nail:cannons/cannon_3b 28 212 8
execute if score fake! Cannon3 matches 1 run kill @e[x=28,y=212,z=8,dx=14,dy=5,dz=7,type=tnt]