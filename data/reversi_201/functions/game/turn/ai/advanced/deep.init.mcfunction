    # #DEBUG log
    # data merge storage reversi_201:logs {tmp:"reversi_201:game/turn/ai/advanced/deep.init"}
    # function reversi_201:game/debug/log.put
#clone
    clone -19999 ~ 17 -19992 ~ 24 -19999 ~-1 17
#新しいCheckerを召喚
    tp 0-0-c9-0-0 -19999 ~-1 17 -90.0 0
#先読みの盤面のターンが白か黒かの設定
    scoreboard players add #MoreDepthTurnColor ReversiData_201 1
    scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000
#実際に石を配置する
    #一か所の選出
        execute as @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,tag=!AlreadyTestPoint_201,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1] at @s run tag @s add TestPoint_201
    #候補の無効化
        tag @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] add InactiveCandidate_201
    #clone済みの盤面に石を置く
        execute as @e[type=area_effect_cloud,tag=TestPoint_201,tag=!InactiveTestPoint_201,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1] at @s positioned ~ ~-1 ~ run function reversi_201:game/stone/util/put.set
    #先読み用の再帰マネージャーを呼び出す
        function reversi_201:game/turn/ai/advanced/deep.recursive.manager