#決定時の処理
    execute if score $TurnColor ReversiData_201 matches 0 as @e[tag=CursorEntity_201,nbt={HurtTime:10s}] at @s align xyz positioned ~0.5 ~-0.4 ~0.5 run function reversi_201:stone/black/set
    execute if score $TurnColor ReversiData_201 matches 1 as @e[tag=CursorEntity_201,nbt={HurtTime:10s}] at @s align xyz positioned ~0.5 ~-0.4 ~0.5 run function reversi_201:stone/white/set
#Advancements消す
    advancement revoke @a only reversi_201:turn/select_check
#弱体化消す
    effect clear @a weakness