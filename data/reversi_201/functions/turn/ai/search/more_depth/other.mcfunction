#TestPoint吹き飛ばす
    execute at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 run summon armor_stand ~ ~ ~ {Tags:[TempY_201],Marker:1b,Invisible:1b}
    execute at @e[tag=TempY_201] run tag @e[tag=Candidate_201,tag=TestPoint_201,tag=!InactiveTestPoint_201,dx=15,dy=0,dz=15] remove TestPoint_201
#盤面clone
    execute at @e[tag=TempY_201] run summon armor_stand 2065 ~ 17 {Marker:1b,Invisible:1b,Tags:[Board_201,Entity_201]}
    execute store result entity @e[limit=1,tag=Board_201] Pos[0] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[0] 1000
    execute store result entity @e[limit=1,tag=Board_201] Pos[2] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[2] 1000
    execute at @e[tag=Board_201] run clone 2065 ~ 17 ~ ~ ~ 2065 ~-1 17
    kill @e[tag=Board_201]
#新しい採掘
    execute at @e[tag=TempY_201] run summon armor_stand 2065 ~-1 17 {Tags:[Checker_201,Entity_201],Marker:1b,Invisible:0b,Invulnerable:1b,NoGravity:1b,Rotation:[-90.0f,0f]}
    execute at @e[tag=TempY_201] positioned 2064 ~ 16 run tag @e[limit=1,tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=15,dy=0,dz=15] add TestPoint_201
    execute if score #MoreDepthTurnColor ReversiData_201 matches 0 as @e[limit=1,tag=TestPoint_201] at @s positioned ~ ~-1 ~ run function reversi_201:turn/ai/search/more_depth/stone/white/set
    execute if score #MoreDepthTurnColor ReversiData_201 matches 1 as @e[limit=1,tag=TestPoint_201] at @s positioned ~ ~-1 ~ run function reversi_201:turn/ai/search/more_depth/stone/black/set
#TempY
    kill @e[tag=TempY_201]
#多分これで行ける。行けて...
    function reversi_201:turn/ai/search/more_depth/recursive_manager