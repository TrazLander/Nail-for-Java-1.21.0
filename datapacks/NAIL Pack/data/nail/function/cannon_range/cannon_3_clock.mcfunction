scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute @p[x=42,y=212,z=12,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players set @p[scores={temp=0}] temp 1
execute @p[x=42,y=212,z=14,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players set @p[scores={temp=0}] temp 1
execute @p[scores={temp=1}] ~ ~ ~ scoreboard objectives add Cannon3 dummy
execute @p[scores={temp=1}] ~ ~ ~ scoreboard players add @p[x=42,y=212,z=12,dx=0,dy=0,dz=0] Cannon3 1
execute @p[scores={temp=1}] ~ ~ ~ scoreboard players add @p[x=42,y=212,z=14,dx=0,dy=0,dz=0] Cannon3 1
# 4-charge cannon
execute @p[scores={Cannon3=1},dz=0,dx=0,dy=0,y=212,x=42,z=12] ~ ~ ~ clone 177 96 2161 191 101 2168 28 212 8
# 5-charge cannon
execute @p[scores={Cannon3=1},dz=0,dx=0,dy=0,y=212,x=42,z=14] ~ ~ ~ clone 177 89 2161 191 94 2168 28 212 8
execute @p[scores={Cannon3=1}] ~ ~ ~ kill @e[x=28,y=212,z=8,dx=14,dy=5,dz=7,type=tnt]
execute @p[scores={temp=0}] ~ ~ ~ scoreboard objectives remove Cannon3
scoreboard objectives remove temp