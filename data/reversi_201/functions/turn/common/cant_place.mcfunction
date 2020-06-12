playsound entity.villager.no ambient @a ~ ~ ~ 1 1 1
#黒の石ないよ
    execute if score $StoneBlack ReversiData_201 matches 0 run title @a actionbar [{"text":"黒の石が無くなりました。詰みです。","color":"gold"}]
    execute if score $StoneBlack ReversiData_201 matches 0 run schedule function reversi_201:end/direct 3s
#白の石ないよ
    execute if score $StoneWhite ReversiData_201 matches 0 run title @a actionbar [{"text":"白の石が無くなりました。詰みです。","color":"gold"}]
    execute if score $StoneWhite ReversiData_201 matches 0 run schedule function reversi_201:end/direct 3s
#連続でスキップだよ
    execute unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 if score #SkipFlag ReversiData_201 matches 1 run tellraw @a [{"text":"双方置くことが出来ないため終局です。","color":"gold"}]
    execute unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 if score #SkipFlag ReversiData_201 matches 1 run schedule function reversi_201:end/direct 3s
#連続じゃないけど置ける場所ないよ
    execute unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run title @a actionbar {"text":"置ける場所がないためターンがスキップされました","color":"red"}
    execute unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run scoreboard players add $TurnColor ReversiData_201 1
    execute unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run scoreboard players operation $TurnColor ReversiData_201 %= #2 num_000
    execute unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run schedule function reversi_201:turn/turn_checker 30t
    execute unless score $StoneBlack ReversiData_201 matches 0 unless score $StoneWhite ReversiData_201 matches 0 unless score #SkipFlag ReversiData_201 matches 1 run scoreboard players set #SkipFlag ReversiData_201 1