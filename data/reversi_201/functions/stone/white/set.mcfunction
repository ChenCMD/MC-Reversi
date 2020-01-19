#石の判定 一つでもひっくり返せたらisSuccess_201 付与
    execute unless entity @e[tag=Stone_201,distance=..0.25] rotated 000 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if entity @e[distance=..0.25,tag=Stone_Black_201] run function reversi_201:stone/white/check
    execute unless entity @e[tag=Stone_201,distance=..0.25] rotated 045 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if entity @e[distance=..0.25,tag=Stone_Black_201] run function reversi_201:stone/white/check
    execute unless entity @e[tag=Stone_201,distance=..0.25] rotated 090 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if entity @e[distance=..0.25,tag=Stone_Black_201] run function reversi_201:stone/white/check
    execute unless entity @e[tag=Stone_201,distance=..0.25] rotated 135 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if entity @e[distance=..0.25,tag=Stone_Black_201] run function reversi_201:stone/white/check
    execute unless entity @e[tag=Stone_201,distance=..0.25] rotated 180 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if entity @e[distance=..0.25,tag=Stone_Black_201] run function reversi_201:stone/white/check
    execute unless entity @e[tag=Stone_201,distance=..0.25] rotated 225 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if entity @e[distance=..0.25,tag=Stone_Black_201] run function reversi_201:stone/white/check
    execute unless entity @e[tag=Stone_201,distance=..0.25] rotated 270 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if entity @e[distance=..0.25,tag=Stone_Black_201] run function reversi_201:stone/white/check
    execute unless entity @e[tag=Stone_201,distance=..0.25] rotated 315 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if entity @e[distance=..0.25,tag=Stone_Black_201] run function reversi_201:stone/white/check
#カーソル位置に石
    summon armor_stand ~ ~ ~ {Fire:1200s,Tags:["fire_000","Stone_201","Stone_White_201","Entity_201"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}]}
#カーソル更新
    scoreboard players set $TurnColor ReversiData_201 0
    function reversi_201:turn/check