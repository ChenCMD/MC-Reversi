#VSCode Extension : Datapack Helper Plus Define
    #define score_holder $TickThroughput
    #define score_holder #TickThroughputC
    #define score_holder $TurnColor 0が黒, 1が白 覚えようね
    #define score_holder $AI-Lv
    #define score_holder $vsAI -1が無し, 0が黒AI, 1が白AI 覚えようね
    #define score_holder #RemainingDepth
    #define score_holder #MoreDepthTurnColor 0が黒, 1が白 覚えようね

    #define tag BoardPos_201 盤面のX,Zが一番小さい座標を保存したEntity
    #define tag BoardSize_201 盤面サイズを保存したEntity
    #define tag Corner_201 盤面の角4マスのEntity
    #define tag PreCorner_201 盤面の角16マスのうち一番外側の角4マスを除いたEntity
    #define tag Checker_201 盤面を読む検査Entity
    #define tag Candidate_201 石を配置できる候補場所
    #define tag InactiveCandidate_201 上の盤面の石を配置出来る候補場所
    #define tag TestPoint_201 現在掘ってる候補箇所
    #define tag InactiveTestPoint_201 上の盤面の現在掘ってる候補箇所
    #define tag AlreadyTestPoint_201 既に掘った候補箇所

team add NoCollision_201
team modify NoCollision_201 collisionRule never
team modify NoCollision_201 seeFriendlyInvisibles false

scoreboard objectives add ReversiData_201 dummy {"text":"リバーシのあれこれ保存用"}
scoreboard objectives add Evaluation_201 dummy {"text":"開放度データ"}
scoreboard objectives add SortValue_201 dummy