#CursorEntityがある = 置けるマスがある ときの処理
    #メッセージとサウンド
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 0 run title @a[tag=Player_Black_201] actionbar {"text":"あなたのターンです","color":"green","bold":true}
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 1 run title @a[tag=Player_White_201] actionbar {"text":"あなたのターンです","color":"green","bold":true}
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 0 run playsound entity.experience_orb.pickup player @a[tag=Player_Black_201] ~ ~ ~ 1 1.2 1
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 1 run playsound entity.experience_orb.pickup player @a[tag=Player_White_201] ~ ~ ~ 1 1.2 1
    #ターンのプレイヤー以外カーソル殴れなくする
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 0 run effect give @a[tag=!Player_Black_201] weakness 999999 99 true
        execute if entity @e[tag=CursorEntity_201] if score $TurnColor ReversiData_201 matches 1 run effect give @a[tag=!Player_White_201] weakness 999999 99 true
    #カーソル見えるように
        execute if entity @e[tag=CursorEntity_201] as @e[tag=NoVisible_201] at @s run tp @s ~ ~1.5 ~
        #execute if entity @e[tag=CursorEntity_201] as @e[tag=SelectItem_201] run data modify entity @s Glowing set value 1b
#置けるマスがない時の処理
    #どちらかの石が0の時の処理
        #メッセージとサウンド
            execute unless entity @e[tag=CursorEntity_201] if score $StoneBlack ReversiData_201 matches 0 run title @a actionbar [{"text":"黒の石が無くなりました。詰みです。","color":"gold"}]
            execute unless entity @e[tag=CursorEntity_201] if score $StoneWhite ReversiData_201 matches 0 run title @a actionbar [{"text":"白の石が無くなりました。詰みです。","color":"gold"}]
            execute unless entity @e[tag=CursorEntity_201] if score $StoneBlack ReversiData_201 matches 0 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
            execute unless entity @e[tag=CursorEntity_201] if score $StoneWhite ReversiData_201 matches 0 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
        #終了処理へ
            execute unless entity @e[tag=CursorEntity_201] if score $StoneBlack ReversiData_201 matches 0 run schedule function reversi_201:end/direct 4s
            execute unless entity @e[tag=CursorEntity_201] if score $StoneWhite ReversiData_201 matches 0 run schedule function reversi_201:end/direct 4s
    #0じゃない = たまたま置けない時の処理
        #メッセージとサウンド
            execute unless entity @e[tag=CursorEntity_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run title @a actionbar {"text":"置ける場所がないためターンがスキップされました","color":"red"}
            execute unless entity @e[tag=CursorEntity_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
        #次のターンにする
            execute unless entity @e[tag=CursorEntity_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run scoreboard players add $TurnColor ReversiData_201 1
            execute unless entity @e[tag=CursorEntity_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run scoreboard players operation $TurnColor ReversiData_201 %= #2 num_000
            execute unless entity @e[tag=CursorEntity_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run function reversi_201:turn/player/search/1