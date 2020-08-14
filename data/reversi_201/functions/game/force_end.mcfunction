schedule clear reversi_201:game/turn/player/long_think/decrement
tellraw @a[scores={playing_000=201},distance=..200,x=2069.0,y=40.0,z=21.0] [{"storage":"reversi_201:data","nbt":"region","color":"red"},{"text":"ゲームを強制終了します...","color":"red"}]
tp @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] ~ ~-200 ~
kill @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0]
kill @e[type=item,tag=SelectItem_201,distance=..200,x=2069.0,y=40.0,z=21.0]
data merge storage reversi_201:data {time:"short"}
function reversi_201:game/end/end.common