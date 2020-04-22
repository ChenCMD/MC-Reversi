#置けるマスがない時の処理
    #どちらかの石が0の時の処理
        #メッセージとサウンド
            execute unless entity @e[tag=Candidate_201] if score $StoneBlack ReversiData_201 matches 0 run title @a actionbar [{"text":"黒の石が無くなりました。詰みです。","color":"gold"}]
            execute unless entity @e[tag=Candidate_201] if score $StoneWhite ReversiData_201 matches 0 run title @a actionbar [{"text":"白の石が無くなりました。詰みです。","color":"gold"}]
            execute unless entity @e[tag=Candidate_201] if score $StoneBlack ReversiData_201 matches 0 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
            execute unless entity @e[tag=Candidate_201] if score $StoneWhite ReversiData_201 matches 0 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
        #終了処理へ
            execute unless entity @e[tag=Candidate_201] if score $StoneBlack ReversiData_201 matches 0 run schedule function reversi_201:end/direct 4s
            execute unless entity @e[tag=Candidate_201] if score $StoneWhite ReversiData_201 matches 0 run schedule function reversi_201:end/direct 4s
    #0じゃない = たまたま置けない時の処理
        #メッセージとサウンド
            execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run title @a actionbar {"text":"置ける場所がないためターンがスキップされました","color":"red"}
            execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
        #次のターンにする
            execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run scoreboard players add #TurnColor ReversiData_201 1
            execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run scoreboard players operation #TurnColor ReversiData_201 %= #2 num_000
            execute unless entity @e[tag=Candidate_201] unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 run function reversi_201:turn/check
#CursorEntityがある = 置けるマスがある ときの処理
    execute as @e[tag=Candidate_201] run scoreboard players set #min OpennessData_201 100
    execute as @e[tag=Candidate_201] run scoreboard players operation #min OpennessData_201 < @s OpennessData_201
    execute as @e[tag=Candidate_201] if score @s OpennessData_201 = #min OpennessData_201 run tag @s add StoneCandidate
    execute as @e[sort=random,limit=1,tag=StoneCandidate] at @s run function reversi_201:turn/select_non_player