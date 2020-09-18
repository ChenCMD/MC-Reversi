#リセット
    execute as @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] at @s run tp @s ~ ~-200 ~
    kill @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=-160.0,z=21.0]
    kill @e[type=item,tag=SelectItem_201,distance=..200,x=2069.0,y=40.0,z=21.0]
    kill @e[type=area_effect_cloud,tag=Candidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0]

#全マス埋まってなかったら続ける
    execute unless score #StoneQuantity ReversiData_201 = #StoneQuantityMAX ReversiData_201 run tp 0-0-c9-0-0 -19998.5 10 17.5 -90 0
    execute unless score #StoneQuantity ReversiData_201 = #StoneQuantityMAX ReversiData_201 unless score $vsAI ReversiData_201 = #TurnColor ReversiData_201 run schedule function reversi_201:game/turn/player/search.recursive.manager 3t
    execute unless score #StoneQuantity ReversiData_201 = #StoneQuantityMAX ReversiData_201 if score $vsAI ReversiData_201 = #TurnColor ReversiData_201 run schedule function reversi_201:game/turn/ai/search.recursive.manager 3t
#埋まってたら終了処理へ
    execute if score #StoneQuantity ReversiData_201 = #StoneQuantityMAX ReversiData_201 run schedule function reversi_201:game/end/direct 3s