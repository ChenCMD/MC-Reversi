schedule clear reversi_201:game/turn/player/long_think/decrement
schedule function reversi_201:game/stone/sheep/respawn 3s
tp @e[tag=CursorEntity_201] ~ ~-200 ~
kill @e[tag=CursorEntity_201]
kill @e[tag=SelectItem_201]
playsound entity.villager.no ambient @a[scores={playing_000=201}] 2969.0 40.5 21.0 1 1 1
title @a[scores={playing_000=201}] times 0 60 20
title @a[scores={playing_000=201}] subtitle {"text":"Time Limit Ended.","color":"white","bold":false,"italic":true}
title @a[scores={playing_000=201}] title {"text":"GAME END!!","color":"yellow","bold":true}
title @a[scores={playing_000=201}] actionbar [{"text":"持ち時間が無くなりました。","color":"gold"}]
schedule function reversi_201:game/turn/player/long_think/timeover.end 80t