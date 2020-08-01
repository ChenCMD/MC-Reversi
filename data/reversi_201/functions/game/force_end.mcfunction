schedule clear reversi_201:game/turn/player/long_think/decrement
tellraw @a [{"text":"ゲームを強制終了します...","color":"red"}]
tp @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] ~ ~-200 ~
kill @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0]
kill @e[type=item,tag=SelectItem_201,distance=..200,x=2069.0,y=40.0,z=21.0]
function reversi_201:game/end/end.common