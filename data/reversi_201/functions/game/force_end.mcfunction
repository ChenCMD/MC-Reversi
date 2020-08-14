schedule clear reversi_201:game/turn/turn_checker
schedule clear reversi_201:game/end/message
schedule clear reversi_201:game/end/direct2
schedule clear reversi_201:game/end/end
schedule clear reversi_201:game/end/direct
schedule clear reversi_201:game/turn/ai/search.recursive.manager
schedule clear reversi_201:game/turn/ai/advanced/deep.back
schedule clear reversi_201:game/turn/ai/advanced/deep.recursive.manager
schedule clear reversi_201:game/turn/select_non_player
schedule clear reversi_201:game/turn/player/cursor.move
schedule clear reversi_201:game/turn/player/search.recursive.manager
schedule clear reversi_201:game/stone/sheep/respawn
schedule clear reversi_201:game/turn/player/long_think/decrement
schedule clear reversi_201:game/turn/player/long_think/timeover.end
tellraw @a[scores={playing_000=201},distance=..200,x=2069.0,y=40.0,z=21.0] [{"storage":"reversi_201:data","nbt":"region","color":"red"},{"text":"ゲームを強制終了します...","color":"red"}]
tp @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] ~ ~-200 ~
kill @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0]
kill @e[type=item,tag=SelectItem_201,distance=..200,x=2069.0,y=40.0,z=21.0]
data merge storage reversi_201:data {time:"short"}
function reversi_201:game/end/end.common