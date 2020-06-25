#Advancements消す
    advancement revoke @a[scores={playing_000=201}] only reversi_201:turn/select_check
#弱体化消す
    effect clear @a[scores={playing_000=201}] weakness
#決定時の処理
    execute as @e[tag=CursorEntity_201,nbt={HurtTime:10s}] at @s align xyz positioned ~0.5 10 ~0.5 run function reversi_201:game/stone/set