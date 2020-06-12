#clone
    clone 2065 ~ 17 2072 ~ 24 2065 ~-1 17
#新しいCheckerを召喚
    summon armor_stand 2065 ~-1 17 {Tags:[Checker_201,Entity_201],Marker:1b,Invisible:0b,Rotation:[-90.0f,0f]}
#先読みの盤面のターンが白か黒かの設定
    scoreboard players add #MoreDepthTurnColor ReversiData_201 1
    scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000
#実際に石を配置する
    #一か所の選出
        execute as @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201,tag=!AlreadyTestPoint_201] at @s run tag @s add TestPoint_201
    #候補の無効化
        tag @e[tag=Candidate_201,tag=!InactiveCandidate_201] add InactiveCandidate_201
    #clone済みの盤面に石を置く
        execute as @e[limit=1,tag=TestPoint_201,tag=!InactiveTestPoint_201] at @s positioned ~ ~-1 ~ run function reversi_201:stone/util/put.set
    #先読み用の再帰マネージャーを呼び出す
        function reversi_201:turn/ai/advanced/deep.recursive.manager