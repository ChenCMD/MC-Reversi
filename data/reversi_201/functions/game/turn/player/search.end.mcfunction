#置けるマスがある時の処理
    #フラグ消し
        execute if entity @e[tag=CursorEntity_201] run scoreboard players set #SkipFlag ReversiData_201 0
    #メッセージとサウンド
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 0 run title @a[tag=Player_Black_201,scores={playing_000=201}] actionbar {"text":"あなたのターンです","color":"green","bold":true}
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 1 run title @a[tag=Player_White_201,scores={playing_000=201}] actionbar {"text":"あなたのターンです","color":"green","bold":true}
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 0 run playsound entity.experience_orb.pickup player @a[tag=Player_Black_201,scores={playing_000=201}] ~ ~ ~ 1 1.2 1
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 1 run playsound entity.experience_orb.pickup player @a[tag=Player_White_201,scores={playing_000=201}] ~ ~ ~ 1 1.2 1
    #ターンのプレイヤー以外カーソル殴れなくする
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 0 run effect give @a[tag=!Player_Black_201,scores={playing_000=201}] weakness 999999 99 true
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 1 run effect give @a[tag=!Player_White_201,scores={playing_000=201}] weakness 999999 99 true
    #カーソル見えるように
        execute if entity @e[tag=CursorEntity_201] run schedule function reversi_201:game/turn/player/cursor.move 1t
#置けるマスがない時の処理
    execute unless entity @e[tag=CursorEntity_201] run function reversi_201:game/turn/common/cant_place
#後処理
    kill @s
    scoreboard players set #TickThroughputC ReversiData_201 -1