# kill @e[tag=holo]
#Advancements消す
    advancement revoke @a[scores={playing_000=201}] only reversi_201:turn/select_check
#弱体化消す
    effect clear @a[scores={playing_000=201}] weakness
#長考の終了処理
    execute if score #Think ReversiData_201 matches 1 run function reversi_201:game/turn/player/long_think/end
#決定時の処理
    execute as @e[type=slime,tag=CursorEntity_201,nbt={HurtTime:10s},distance=..200,x=2069.0,y=40.0,z=21.0] at @s align xyz positioned ~-22063.5 10 ~0.5 run function reversi_201:game/stone/set