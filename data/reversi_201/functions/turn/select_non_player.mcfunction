#決定時の処理
    execute if score #TurnColor ReversiData_201 matches 0 run tag @s add AlreadySet_201
    execute if score #TurnColor ReversiData_201 matches 0 at @s align xyz positioned ~0.5 10 ~0.5 run function reversi_201:stone/black/set
    execute if score #TurnColor ReversiData_201 matches 1 if entity @s[tag=!AlreadySet_201] at @s align xyz positioned ~0.5 10 ~0.5 run function reversi_201:stone/white/set
#弱体化消す
    effect clear @a weakness