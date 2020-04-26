particle end_rod ~ 41 ~ 0 0 0 0 5 force
#チェックシステム
    #そのマスが石を置けるかのチェック+開放度
        execute if score $TurnColor ReversiData_201 matches 0 positioned ~ 10 ~ unless block ~ 10 ~ #reversi_201:stone_block run function reversi_201:turn/ai/check/black
        execute if score $TurnColor ReversiData_201 matches 1 positioned ~ 10 ~ unless block ~ 10 ~ #reversi_201:stone_block run function reversi_201:turn/ai/check/white
    #isSuccess付いてたら開放度確認
        execute if entity @s[tag=isSuccess_201] run function reversi_201:turn/ai/search/success
        function reversi_201:turn/ai/search/2