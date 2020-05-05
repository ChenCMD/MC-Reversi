#置けるマスがない時の処理
    #フラグ消し
        execute if entity @e[tag=Candidate_201] run scoreboard players set #SkipFlag ReversiData_201 0
    execute unless entity @e[tag=Candidate_201] run kill @e[limit=1,tag=Checker_201,tag=!InactiveChecker_201]
    #どちらかの石が0の時の処理
        #メッセージとサウンド
            execute unless entity @e[tag=Candidate_201] if score $StoneBlack ReversiData_201 matches 0 run title @a actionbar [{"text":"黒の石が無くなりました。詰みです。","color":"gold"}]
            execute unless entity @e[tag=Candidate_201] if score $StoneWhite ReversiData_201 matches 0 run title @a actionbar [{"text":"白の石が無くなりました。詰みです。","color":"gold"}]
            execute unless entity @e[tag=Candidate_201] if score $StoneBlack ReversiData_201 matches 0 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
            execute unless entity @e[tag=Candidate_201] if score $StoneWhite ReversiData_201 matches 0 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
        #終了処理へ
            execute unless entity @e[tag=Candidate_201] if score $StoneBlack ReversiData_201 matches 0 run schedule function reversi_201:end/direct 3s
            execute unless entity @e[tag=Candidate_201] if score $StoneWhite ReversiData_201 matches 0 run schedule function reversi_201:end/direct 3s
    #0じゃない = たまたま置けない時の処理
        #連続スキップ
            execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 if score #SkipFlag ReversiData_201 matches 1 run tellraw @a [{"text":"双方置くことが出来ないため終局です。","color":"gold"}]
            execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 if score #SkipFlag ReversiData_201 matches 1 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
            execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 if score #SkipFlag ReversiData_201 matches 1 run schedule function reversi_201:end/direct 3s
        #!連続
            #フラグ付与
            #メッセージとサウンド
                execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run title @a actionbar {"text":"置ける場所がないためターンがスキップされました","color":"red"}
                execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
            #次のターンにする
                execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run scoreboard players add $TurnColor ReversiData_201 1
                execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run scoreboard players operation $TurnColor ReversiData_201 %= #2 num_000
                execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run schedule function reversi_201:turn/turn_checker 30t
                execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run tellraw @a {"text":"[A] SkipFlag = 1;"}
                execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run scoreboard players set #SkipFlag ReversiData_201 1
#CursorEntityがある = 置けるマスがある ときの処理
    execute if entity @e[tag=Candidate_201] run function reversi_201:turn/ai/end_branch