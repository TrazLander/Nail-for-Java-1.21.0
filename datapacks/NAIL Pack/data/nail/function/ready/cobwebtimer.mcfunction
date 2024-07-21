# No handicap
execute if score fake! DefenderHandicap matches 0 run tp @e[x=185,y=35,z=2172,dx=0,dy=0,dz=0] -3 215.175 44 0 0
execute if score fake! DefenderHandicap matches 0 run tp @e[x=185,y=35,z=2174,dx=0,dy=0,dz=0] 2 215.175 44 0 0
execute if score fake! DefenderHandicap matches 0 run execute as @e[x=-3,y=215,z=44,dx=0,dy=0,dz=0,type=item] run execute as @e[x=2,y=215,z=44,dx=0,dy=0,dz=0,type=item] run scoreboard objectives remove cobwebtimer

# handicap
execute if score fake! DefenderHandicap matches 1 run tp @e[x=185,y=35,z=2172,dx=0,dy=0,dz=0] -3 216.375 44.8 0 0
execute if score fake! DefenderHandicap matches 1 run tp @e[x=185,y=35,z=2174,dx=0,dy=0,dz=0] 2 216.375 44.8 0 0
execute if score fake! DefenderHandicap matches 1 run execute as @e[x=-3,y=216,z=44,dx=0,dy=0,dz=0,type=item] run execute as @e[x=2,y=216,z=44,dx=0,dy=0,dz=0,type=item] run scoreboard objectives remove cobwebtimer