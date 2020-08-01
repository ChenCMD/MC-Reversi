schedule clear reversi_201:game/turn/player/long_think/decrement
schedule function reversi_201:game/stone/sheep/respawn 3s
tp @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] ~ ~-200 ~
kill @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=-160.0,z=21.0]
kill @e[type=item,tag=SelectItem_201,distance=..200,x=2069.0,y=40.0,z=21.0]
playsound entity.villager.no ambient @a[scores={playing_000=201}] 2969.0 40.5 21.0 1 1 1
title @a[scores={playing_000=201}] times 0 60 20
title @a[scores={playing_000=201}] subtitle {"text":"Time Limit Ended.","color":"white","bold":false,"italic":true}
title @a[scores={playing_000=201}] title {"text":"GAME END!!","color":"yellow","bold":true}
title @a[scores={playing_000=201}] actionbar [{"text":"持ち時間が無くなりました。","color":"gold"}]
schedule function reversi_201:game/turn/player/long_think/timeover.end 80t