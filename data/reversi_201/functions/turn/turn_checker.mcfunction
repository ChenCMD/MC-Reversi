#リセット
    execute as @e[tag=CursorEntity_201] at @s run tp @s ~ ~-200 ~
    kill @e[tag=CursorEntity_201]
    kill @e[tag=SelectItem_201]
    kill @e[tag=Candidate_201]
#DEBUG 石の数の合計にずれがありそうなので検査
    scoreboard players operation #TEST ReversiData_201 = $StoneBlack ReversiData_201
    scoreboard players operation #TEST ReversiData_201 += $StoneWhite ReversiData_201
    execute unless score $StoneQuantity ReversiData_201 = #TEST ReversiData_201 run tellraw @a [{"text":"[ERROR] ","color":"red","bold":true},{"text":"StoneQuantityとBlack+Whiteが一致しないよ。","color":"red","bold":false}]

#全マス埋まってなかったら続ける
    execute unless score $StoneQuantity ReversiData_201 = $StoneQuantityMAX ReversiData_201 at @e[tag=BoardPos_201] run summon armor_stand ~ 10 ~ {Tags:[Checker_201,Entity_201],Marker:1b,Invisible:0b,Rotation:[-90.0f,0f]}
    execute unless score $StoneQuantity ReversiData_201 = $StoneQuantityMAX ReversiData_201 unless score $vsAI ReversiData_201 = $TurnColor ReversiData_201 run function reversi_201:turn/player/search.recursive.manager
    execute unless score $StoneQuantity ReversiData_201 = $StoneQuantityMAX ReversiData_201 if score $vsAI ReversiData_201 = $TurnColor ReversiData_201 run function reversi_201:turn/ai/search.recursive.manager
#埋まってたら終了処理へ
    execute if score $StoneQuantity ReversiData_201 = $StoneQuantityMAX ReversiData_201 run schedule function reversi_201:end/direct 3s