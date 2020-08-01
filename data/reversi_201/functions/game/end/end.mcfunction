#title関連
    title @a[scores={playing_000=201}] times 0 100 20
    execute if score #StoneBlack ReversiData_201 = #StoneWhite ReversiData_201 run title @a[scores={playing_000=201}] subtitle [{"text":"引き分けです。","color":"dark_aqua"}]
    execute if score #StoneBlack ReversiData_201 > #StoneWhite ReversiData_201 run title @a[scores={playing_000=201}] subtitle [{"text":"黒の勝利です","color":"green"}]
    execute if score #StoneBlack ReversiData_201 < #StoneWhite ReversiData_201 run title @a[scores={playing_000=201}] subtitle [{"text":"白の勝利です","color":"green"}]
    execute if score #StoneBlack ReversiData_201 < #StoneWhite ReversiData_201 run title @a[tag=Player_White_201,scores={playing_000=201}] title {"text":"YOU WIN","color":"yellow","bold":true}
    execute if score #StoneBlack ReversiData_201 < #StoneWhite ReversiData_201 run title @a[tag=Player_Black_201,scores={playing_000=201}] title {"text":"YOU LOSE","color":"dark_aqua","bold":true}
    execute if score #StoneBlack ReversiData_201 > #StoneWhite ReversiData_201 run title @a[tag=Player_Black_201,scores={playing_000=201}] title {"text":"YOU WIN","color":"yellow","bold":true}
    execute if score #StoneBlack ReversiData_201 > #StoneWhite ReversiData_201 run title @a[tag=Player_White_201,scores={playing_000=201}] title {"text":"YOU LOSE","color":"dark_aqua","bold":true}
    execute if score #StoneBlack ReversiData_201 = #StoneWhite ReversiData_201 run title @a[scores={playing_000=201}] title {"text":"DRAW","color":"yellow","bold":true}
    tellraw @a[scores={playing_000=201}] [{"text":"試合結果: ","color":"gold"},{"score":{"objective":"ReversiData_201","name":"#StoneWhite"},"color":"white","bold":true},{"text":" : ","color":"gold","bold":false},{"score":{"objective":"ReversiData_201","name":"#StoneBlack"},"color":"dark_gray","bold":true}]
#サウンド
    execute if score #StoneBlack ReversiData_201 = #StoneWhite ReversiData_201 run playsound entity.villager.trade ambient @a[scores={playing_000=201}] 2969.0 40.5 21.0 0.5 1 1
    execute unless score #StoneBlack ReversiData_201 = #StoneWhite ReversiData_201 run playsound ui.toast.challenge_complete player @a[scores={playing_000=201}] 2969.0 40.5 21.0 0.5 1 1
#ゴミ処理
    kill @e[type=armor_stand,tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0]
#共通終了処理
    function reversi_201:game/end/end.common