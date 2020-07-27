schedule clear reversi_201:game/turn/player/long_think/decrement
tellraw @a [{"text":"ゲームを強制終了します...","color":"red"}]
tp @e[tag=CursorEntity_201] ~ ~-200 ~
kill @e[tag=CursorEntity_201]
kill @e[tag=SelectItem_201]
function reversi_201:game/end/end.common