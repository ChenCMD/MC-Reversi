#> reversi_201:init
# @within function reversi_201:init_check

forceload add -20000 16

#> VSCode Extension : Data-pack Helper Plus declare
# @within function reversi_201:init
# @within function reversi_201:game/**
    #declare score_holder $sheep
    #declare score_holder #sheepC
    #declare score_holder #TurnColor 0が黒, 1が白 覚えようね
    #declare score_holder $Think.MAX
    #declare score_holder $vsAI -1が無し, 0が黒AI, 1が白AI 覚えようね
    #declare score_holder #StoneQuantity 石の配置数
    #declare score_holder #RemainingDepth
    #declare score_holder #MoreDepthTurnColor 0が黒, 1が白 覚えようね
    #declare score_holder #AI-LastAlgorithm
    #declare tag Corner_201 盤面の角4マスのEntity
    #declare tag PreCorner_201 盤面の角16マスのうち一番外側の角4マスを除いたEntity
    #declare tag Checker_201 盤面を読む検査Entity
    #declare tag Candidate_201 石を配置できる候補場所
    #declare tag InactiveCandidate_201 上の盤面の石を配置出来る候補場所
    #declare tag TestPoint_201 現在掘ってる候補箇所
    #declare tag InactiveTestPoint_201 上の盤面の現在掘ってる候補箇所
    #declare tag AlreadyTestPoint_201 既に掘った候補箇所
    scoreboard objectives add SheepID_X_201 dummy {"text":"(201)羊"}
    scoreboard objectives add SheepID_Y_201 dummy {"text":"(201)羊"}
    scoreboard objectives add Evaluation_201 dummy {"text":"(201)評価値"}
    scoreboard objectives add SortValue_201 dummy {"text":"(201)評価値ソート"}
    bossbar add reversi_201:player1_201 {"text":"黒 持ち時間","color":"dark_gray"}
    bossbar add reversi_201:player2_201 {"text":"白 持ち時間","color":"white"}

#alias entity checker 0-0-c9-0-0
bossbar set reversi_201:player1_201 color purple
bossbar set reversi_201:player1_201 style progress
bossbar set reversi_201:player1_201 visible true
bossbar set reversi_201:player2_201 color white
bossbar set reversi_201:player2_201 style progress
bossbar set reversi_201:player2_201 visible true


#> VSCode Extension : Data-pack Helper Plus declare
# @within function reversi_201:*
# @within function reversi_201:menu/**
    #declare storage reversi_201:menu
    #declare score_holder $Current SessionID_201
    scoreboard objectives add SessionID.B_201 dummy {"text":"(201)セッションのID"}
    scoreboard objectives add SessionID.W_201 dummy {"text":"(201)セッションのID"}

data merge storage reversi_201:menu {Default:{Skin:   [{Offset:[2.4f,1.5f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2000,Text:['{"text":"ス","color":"green","font": "uniform"}','{"text":"キ","color":"green","font": "uniform"}','{"text":"ン","color":"green","font": "uniform"}']},{Offset:[3.2f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2001,Text:['{"text":"メ","color":"white","font": "uniform"}','{"text":"ニ","color":"white","font": "uniform"}','{"text":"ュ","color":"white","font": "uniform"}','{"text":"ー","color":"white","font": "uniform"}']},{Offset:[4.2f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2002,Text:['{"text":"設","color":"white","font": "uniform"}','{"text":"定","color":"white","font": "uniform"}']},{Offset:[3.31f,3.0f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2000,Text:['{"text":"開","bold":true,"font": "uniform"}','{"text":"発","bold":true,"font": "uniform"}','{"text":"中","bold":true,"font": "uniform"}']}]}}
data merge storage reversi_201:menu {Default:{Menu:   [{Offset:[2.4f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2000,Text:['{"text":"ス","color":"white","font": "uniform"}','{"text":"キ","color":"white","font": "uniform"}','{"text":"ン","color":"white","font": "uniform"}']},{Offset:[3.2f,1.5f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2001,Text:['{"text":"メ","color":"green","font": "uniform"}','{"text":"ニ","color":"green","font": "uniform"}','{"text":"ュ","color":"green","font": "uniform"}','{"text":"ー","color":"green","font": "uniform"}']},{Offset:[4.2f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2002,Text:['{"text":"設","color":"white","font": "uniform"}','{"text":"定","color":"white","font": "uniform"}']},{Offset:[1.7f,2.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.20f},HologramID:2011,Text:['{"text":"プ","color":"dark_gray","font": "uniform"}','{"text":"レ","color":"dark_gray","font": "uniform"}','{"text":"イ","color":"dark_gray","font": "uniform"}','{"text":"ヤ","color":"dark_gray","font": "uniform"}','{"text":"ー","color":"dark_gray","font": "uniform"}','{"text":"1","color":"dark_gray","font": "uniform"}']},{Offset:[4.4f,2.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.20f},HologramID:2012,Text:['{"text":"プ","color":"white","font": "uniform"}','{"text":"レ","color":"white","font": "uniform"}','{"text":"イ","color":"white","font": "uniform"}','{"text":"ヤ","color":"white","font": "uniform"}','{"text":"ー","color":"white","font": "uniform"}','{"text":"2","color":"white","font": "uniform"}']},{Offset:[3.2f,3.8f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.22f},HologramID:2010,Text:["ス","タ","ー","ト"]}]}}
data merge storage reversi_201:menu {Default:{Setting:[{Offset:[2.4f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2000,Text:['{"text":"ス","color":"white","font": "uniform"}','{"text":"キ","color":"white","font": "uniform"}','{"text":"ン","color":"white","font": "uniform"}']},{Offset:[3.2f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2001,Text:['{"text":"メ","color":"white","font": "uniform"}','{"text":"ニ","color":"white","font": "uniform"}','{"text":"ュ","color":"white","font": "uniform"}','{"text":"ー","color":"white","font": "uniform"}']},{Offset:[4.2f,1.5f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2002,Text:['{"text":"設","color":"green","font": "uniform"}','{"text":"定","color":"green","font": "uniform"}']},{Offset:[1.7f,2.5f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.0f},HologramID:2030,Text:['‌']},{Offset:[2.2f,2.5f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.20f},HologramID:2020,Text:['{"text":"A","font": "uniform"}','{"text":"I","font": "uniform"}','{"text":"戦","font": "uniform"}','','{"text":":","font": "uniform"}']},{Offset:[1.7f,2.9f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.0f},HologramID:2032,Text:['‌']},{Offset:[2.2f,2.9f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.20f},HologramID:2022,Text:['{"text":"長","font": "uniform"}','{"text":"考","font": "uniform"}','','','{"text":":","font": "uniform"}']},{Offset:[3.975f,2.9f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.20f},HologramID:2022,Text:['{"text":"+","font": "uniform"}']},{Offset:[1.7f,3.3f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.0f},HologramID:2035,Text:['‌']},{Offset:[2.2f,3.3f],Setting:{CursorCollider:0b,TextInterpret:0b,TextSpaceWidth:0.20f},HologramID:2025,Text:['羊','','','',':']},{Offset:[1.7f,3.7f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.0f},HologramID:2037,Text:['‌']},{Offset:[2.2f,3.7f],Setting:{CursorCollider:0b,TextInterpret:0b,TextSpaceWidth:0.20f},HologramID:2027,Text:['盤','面','隔','離',':']}]}}


#> VSCode Extension : Data-pack Helper Plus declare
# @internal
    #declare score_holder $isPlay
    #declare score_holder #PlayTime
    #declare tag Player_White_201
    #declare tag Player_Black_201
    #declare storage reversi_201:logs
    #declare storage reversi_201:data
    scoreboard objectives add StoneSkin_201 dummy {"text":"石の見た目の選択"}
    team add NoCollision_201

execute unless score #CurrentSkin StoneSkin_201 = #CurrentSkin StoneSkin_201 run scoreboard players set #CurrentSkin StoneSkin_201 2001
execute unless score $sheep ReversiData_201 = $sheep ReversiData_201 run scoreboard players set $sheep ReversiData_201 0
execute unless score $vsAI ReversiData_201 = $vsAI ReversiData_201 run scoreboard players set $vsAI ReversiData_201 -1
execute unless score $AI-Lv ReversiData_201 = $AI-Lv ReversiData_201 run scoreboard players set $AI-Lv ReversiData_201 3
execute unless score $Think.COUNT ReversiData_201 = $Think.COUNT ReversiData_201 run scoreboard players set $Think.COUNT ReversiData_201 -1
execute unless score $Think.MAX ReversiData_201 = $Think.MAX ReversiData_201 run scoreboard players set $Think.MAX ReversiData_201 -1
execute unless score #Think ReversiData_201 = #Think ReversiData_201 run scoreboard players set #Think ReversiData_201 -1
execute unless score $isolation ReversiData_201 = $isolation ReversiData_201 run scoreboard players set $isolation ReversiData_201 0
team modify NoCollision_201 collisionRule never
team modify NoCollision_201 seeFriendlyInvisibles false