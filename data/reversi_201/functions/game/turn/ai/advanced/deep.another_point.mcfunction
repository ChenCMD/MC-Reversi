    # #DEBUG log
    # data merge storage reversi_201:logs {tmp:"reversi_201:game/turn/ai/advanced/deep.another_point"}
    # function reversi_201:game/debug/log.put
#TestPoint吹き飛ばす
    execute at @e[type=area_effect_cloud,tag=TestPoint_201,tag=!InactiveTestPoint_201,distance=..50,x=-19995.0,y=11.0,z=21.0] positioned -20000 ~ 16 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[TempY_201,Entity_201]}
    tag @e[type=area_effect_cloud,tag=TestPoint_201,tag=!InactiveTestPoint_201,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1] remove TestPoint_201
#盤面clone
    execute at @e[type=area_effect_cloud,tag=TempY_201,distance=..50,x=-19995.0,y=11.0,z=21.0] run clone -19999 ~ 17 -19992 ~ 24 -19999 ~-1 17
#新しい採掘
    execute at @e[type=area_effect_cloud,tag=TempY_201,distance=..50,x=-19995.0,y=11.0,z=21.0] run summon armor_stand -19999 ~-1 17 {Tags:[Checker_201,Entity_201],Marker:1b,Invisible:0b,Invulnerable:1b,NoGravity:1b,Rotation:[-90.0f,0f]}
    execute at @e[type=area_effect_cloud,tag=TempY_201,distance=..50,x=-19995.0,y=11.0,z=21.0] positioned -20000 ~ 16 run tag @e[type=area_effect_cloud,tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=15,dy=0,dz=15,limit=1] add TestPoint_201

    execute as @e[type=area_effect_cloud,tag=TestPoint_201,tag=!InactiveTestPoint_201,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1] at @s positioned ~ ~-1 ~ run function reversi_201:game/stone/util/put.set
#TempY
    kill @e[type=area_effect_cloud,tag=TempY_201,distance=..50,x=-19995.0,y=11.0,z=21.0]
#多分これで行ける。行けて...
    function reversi_201:game/turn/ai/advanced/deep.recursive.manager