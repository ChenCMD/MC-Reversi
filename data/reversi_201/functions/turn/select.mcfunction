#Advancements消す
    advancement revoke @a only reversi_201:turn/select_check
#弱体化消す
    effect clear @a weakness
#決定時の処理
    execute as @e[tag=CursorEntity_201,nbt={HurtTime:10s}] at @s align xyz positioned ~0.5 10 ~0.5 run function reversi_201:stone/set