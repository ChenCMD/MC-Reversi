#決定時の処理
    ##DEBUG ホログラムkill
    #kill @e[tag=Display]
    execute at @e[tag=Candidate_201] run particle totem_of_undying ~ 42 ~ 0 0.5 0 0 40
    execute as @e[tag=Candidate_201] at @s align xyz positioned ~0.5 10 ~0.5 run function reversi_201:stone/set