#    9  8  7  6  5  4  3  2
# 17 X  X  X  X  X  X  X  X
# 18 X  X  X  X  X  X  X  X
# 19 X  X  X  X  X  X  X  X
# 20 X  X  X  X  X  X  X  X
# 21 X  X  X  X  X  X  X  X
# 22 X  X  X  X  X  X  X  X
# 23 X  X  X  X  X  X  X  X
# 24 X  X  X  X  X  X  X  X
#
execute if entity @e[type=area_effect_cloud,tag=PreCorner_201,distance=..0.5,y=0] facing entity @e[type=area_effect_cloud,tag=Corner_201,distance=..1.5,y=0,limit=1] feet rotated ~ 0 if block ^ ^ ^1 air run scoreboard players add @s Evaluation_201 32
execute if entity @e[type=area_effect_cloud,tag=Corner_201,distance=..0.5,y=0] run scoreboard players remove @s Evaluation_201 32