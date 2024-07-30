# respawn rotate - no longer needed as of 1.16.2 since they added a rotation to /spawnpoint, but will be needed if map converts to bedrock
# scoreboard players add @a[scores={Teams=1},dz=19,dx=7,dy=6,y=216,x=-4,z=414] T1RespawnRotate 1
# effect give @a[scores={T1RespawnRotate=1..}] saturation 1 50 true
# effect give @a[scores={T1RespawnRotate=1..}] speed 25 1 true
# tp @a[scores={T1RespawnRotate=1}] 0.0 218 429 180 0
# scoreboard players reset @a[scores={T1RespawnRotate=0..}] T1RespawnRotate
# scoreboard players set @a[scores={Teams=1},dz=19,dx=7,dy=6,y=216,x=-4,z=414] T1RespawnRotate 2