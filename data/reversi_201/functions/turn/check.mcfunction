#リセット
    execute as @e[tag=CursorEntity_201] at @s run tp @s ~ ~-200 ~
    kill @e[tag=CursorEntity_201]
    kill @e[tag=SelectItem_201]
    kill @e[tag=Candidate_201]
#全マス埋まってなかったら続ける
    execute unless score $StoneQuantity ReversiData_201 = $StoneQuantityMAX ReversiData_201 at @e[tag=BoardPos_201] run summon armor_stand ~ 5 ~ {Tags:[CheckEntity_201,Entity_201],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[-90.0f]}
    execute unless score $StoneQuantity ReversiData_201 = $StoneQuantityMAX ReversiData_201 run schedule function reversi_201:turn/check2pre 1t
#埋まってたら終了処理へ
    execute if score $StoneQuantity ReversiData_201 = $StoneQuantityMAX ReversiData_201 run schedule function reversi_201:end/direct 5s