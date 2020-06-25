    # #DEBUG log
    # data merge storage reversi_201:logs {tmp:"reversi_201:game/turn/ai/advanced/deep.another_point"}
    # function reversi_201:game/debug/log.put
#TestPoint吹き飛ばす
    execute at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 run summon armor_stand ~ ~ ~ {Tags:[TempY_201,Entity_201],Marker:1b,Invisible:1b}
    tag @e[limit=1,tag=TestPoint_201,tag=!InactiveTestPoint_201] remove TestPoint_201
#盤面clone
    execute at @e[tag=TempY_201] run clone 2065 ~ 17 2072 ~ 24 2065 ~-1 17
#新しい採掘
    execute at @e[tag=TempY_201] run summon armor_stand 2065 ~-1 17 {Tags:[Checker_201,Entity_201],Marker:1b,Invisible:0b,Invulnerable:1b,NoGravity:1b,Rotation:[-90.0f,0f]}
    execute at @e[tag=TempY_201] positioned 2064 ~ 16 run tag @e[limit=1,tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=15,dy=0,dz=15] add TestPoint_201

    execute as @e[limit=1,tag=TestPoint_201,tag=!InactiveTestPoint_201] at @s positioned ~ ~-1 ~ run function reversi_201:game/stone/util/put.set
#TempY
    kill @e[tag=TempY_201]
#多分これで行ける。行けて...
    function reversi_201:game/turn/ai/advanced/deep.recursive.manager