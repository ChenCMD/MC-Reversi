#> reversi_201:init
# @within tag/function
#   minecraft:load

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
    scoreboard objectives add SheepID_X_201 dummy {"text":"羊"}
    scoreboard objectives add SheepID_Y_201 dummy {"text":"羊"}
    scoreboard objectives add Evaluation_201 dummy {"text":"評価値"}
    scoreboard objectives add SortValue_201 dummy {"text":"評価値ソート"}
    bossbar add reversi_201:player1_201 {"text":"黒 持ち時間","color":"dark_gray"}
    bossbar add reversi_201:player2_201 {"text":"白 持ち時間","color":"white"}

bossbar set reversi_201:player1_201 color purple
bossbar set reversi_201:player1_201 style progress
bossbar set reversi_201:player1_201 visible true
bossbar set reversi_201:player2_201 color white
bossbar set reversi_201:player2_201 style progress
bossbar set reversi_201:player2_201 visible true


#> VSCode Extension : Data-pack Helper Plus declare
# @within function reversi_201:init
# @within function reversi_201:menu/**
    #declare storage reversi_201:menu
    #declare score_holder $Current SessionID.0_201
    scoreboard objectives add SessionID.0_201 dummy {"text":"退出などによる検知ずれ防止"}
    scoreboard objectives add SessionID.1_201 dummy {"text":"退出などによる検知ずれ防止"}
    scoreboard objectives add SessionID.2_201 dummy {"text":"退出などによる検知ずれ防止"}
    scoreboard objectives add SessionID.3_201 dummy {"text":"退出などによる検知ずれ防止"}
    scoreboard objectives add SessionID.4_201 dummy {"text":"退出などによる検知ずれ防止"}

data merge storage reversi_201:menu {Default:{Skin:   [{Offset:[2.4f,1.5f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2000,Text:['{"text":"ス","color":"green"}','{"text":"キ","color":"green"}','{"text":"ン","color":"green"}']},{Offset:[3.2f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2001,Text:['{"text":"メ","color":"white"}','{"text":"ニ","color":"white"}','{"text":"ュ","color":"white"}','{"text":"ー","color":"white"}']},{Offset:[4.2f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2002,Text:['{"text":"設","color":"white"}','{"text":"定","color":"white"}']}]}}
data merge storage reversi_201:menu {Default:{Menu:   [{Offset:[2.4f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2000,Text:['{"text":"ス","color":"white"}','{"text":"キ","color":"white"}','{"text":"ン","color":"white"}']},{Offset:[3.2f,1.5f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2001,Text:['{"text":"メ","color":"green"}','{"text":"ニ","color":"green"}','{"text":"ュ","color":"green"}','{"text":"ー","color":"green"}']},{Offset:[4.2f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2002,Text:['{"text":"設","color":"white"}','{"text":"定","color":"white"}']},{Offset:[1.7f,2.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.20f},HologramID:2011,Text:['{"text":"プ","color":"dark_gray"}','{"text":"レ","color":"dark_gray"}','{"text":"イ","color":"dark_gray"}','{"text":"ヤ","color":"dark_gray"}','{"text":"ー","color":"dark_gray"}','{"text":"1","color":"dark_gray"}']},{Offset:[4.4f,2.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.20f},HologramID:2012,Text:['{"text":"プ","color":"white"}','{"text":"レ","color":"white"}','{"text":"イ","color":"white"}','{"text":"ヤ","color":"white"}','{"text":"ー","color":"white"}','{"text":"2","color":"white"}']},{Offset:[3.2f,3.8f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.22f},HologramID:2010,Text:["ス","タ","ー","ト"]}]}}
data merge storage reversi_201:menu {Default:{Setting:[{Offset:[2.4f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2000,Text:['{"text":"ス","color":"white"}','{"text":"キ","color":"white"}','{"text":"ン","color":"white"}']},{Offset:[3.2f,1.5f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2001,Text:['{"text":"メ","color":"white"}','{"text":"ニ","color":"white"}','{"text":"ュ","color":"white"}','{"text":"ー","color":"white"}']},{Offset:[4.2f,1.5f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2002,Text:['{"text":"設","color":"green"}','{"text":"定","color":"green"}']},{Offset:[1.7f,2.5f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.0f},HologramID:2030,Text:['‌']},{Offset:[2.2f,2.5f],Setting:{CursorCollider:0b,TextInterpret:0b,TextSpaceWidth:0.20f},HologramID:2020,Text:['A','I','戦','',':']},{Offset:[1.7f,2.9f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.0f},HologramID:2032,Text:['‌']},{Offset:[2.2f,2.9f],Setting:{CursorCollider:0b,TextInterpret:0b,TextSpaceWidth:0.20f},HologramID:2022,Text:['長','考','','',':']},{Offset:[3.975f,2.9f],Setting:{CursorCollider:0b,TextInterpret:0b,TextSpaceWidth:0.20f},HologramID:2022,Text:['+']},{Offset:[1.7f,3.3f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.0f},HologramID:2035,Text:['‌']},{Offset:[2.2f,3.3f],Setting:{CursorCollider:0b,TextInterpret:0b,TextSpaceWidth:0.20f},HologramID:2025,Text:['羊','','','',':']},{Offset:[1.7f,3.7f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.0f},HologramID:2037,Text:['‌']},{Offset:[2.2f,3.7f],Setting:{CursorCollider:0b,TextInterpret:0b,TextSpaceWidth:0.20f},HologramID:2027,Text:['盤','面','隔','離',':']}]}}


#> VSCode Extension : Data-pack Helper Plus declare
# @internal
    #declare score_holder $isPlay
    #declare score_holder #PlayTime
    #declare tag Player_White_201
    #declare tag Player_Black_201
    #declare storage reversi_201:logs
    #declare storage reversi_201:data
    scoreboard objectives add ReversiData_201 dummy {"text":"リバーシのあれこれ保存用"}
    scoreboard objectives add StoneSkin_201 dummy {"text":"石の見た目の選択"}
    team add NoCollision_201

execute unless score $sheep ReversiData_201 = $sheep ReversiData_201 run scoreboard players set $sheep ReversiData_201 0
execute unless score $vsAI ReversiData_201 = $vsAI ReversiData_201 run scoreboard players set $vsAI ReversiData_201 -1
execute unless score $AI-Lv ReversiData_201 = $AI-Lv ReversiData_201 run scoreboard players set $AI-Lv ReversiData_201 3
execute unless score $Think.COUNT ReversiData_201 = $Think.COUNT ReversiData_201 run scoreboard players set $Think.COUNT ReversiData_201 -1
execute unless score $Think.MAX ReversiData_201 = $Think.MAX ReversiData_201 run scoreboard players set $Think.MAX ReversiData_201 -1
execute unless score #Think ReversiData_201 = #Think ReversiData_201 run scoreboard players set #Think ReversiData_201 -1
execute unless score $isolation ReversiData_201 = $isolation ReversiData_201 run scoreboard players set $isolation ReversiData_201 0
team modify NoCollision_201 collisionRule never
team modify NoCollision_201 seeFriendlyInvisibles false