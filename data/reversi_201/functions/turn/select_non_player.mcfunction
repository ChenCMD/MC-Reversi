#決定時の処理
    execute at @e[tag=Candidate_201] run particle totem_of_undying ~ 42 ~ 0 0.5 0 0 40
    execute if score $TurnColor ReversiData_201 matches 0 as @e[tag=Candidate_201] run tag @s add AlreadySet_201
    execute if score $TurnColor ReversiData_201 matches 0 as @e[tag=Candidate_201] at @s align xyz positioned ~0.5 10 ~0.5 run function reversi_201:stone/black/set
    execute if score $TurnColor ReversiData_201 matches 1 as @e[tag=Candidate_201] if entity @s[tag=!AlreadySet_201] at @s align xyz positioned ~0.5 10 ~0.5 run function reversi_201:stone/white/set