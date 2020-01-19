    execute at @e[tag=BoardPos_201] run fill ~-1 ~ ~-1 ~8 ~ ~8 air
    kill @e[tag=BoardPos_201]
#ボード準備
    execute align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {Fire:1200s,Tags:["BoardPos_201","Entity_201"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b}
    execute at @e[tag=BoardPos_201] run fill ~-1 ~ ~-1 ~8 ~ ~8 polished_diorite_slab[type=bottom]
    execute at @e[tag=BoardPos_201] run fill ~ ~ ~ ~1 ~ ~1 andesite_slab[type=bottom]
    execute at @e[tag=BoardPos_201] run setblock ~0 ~ ~0 granite_slab[type=bottom]
    execute at @e[tag=BoardPos_201] run setblock ~1 ~ ~1 granite_slab[type=bottom]
    execute at @e[tag=BoardPos_201] run clone ~ ~ ~ ~1 ~ ~1 ~0 ~ ~2
    execute at @e[tag=BoardPos_201] run clone ~ ~ ~ ~1 ~ ~1 ~2 ~ ~0
    execute at @e[tag=BoardPos_201] run clone ~ ~ ~ ~1 ~ ~1 ~2 ~ ~2
    execute at @e[tag=BoardPos_201] run clone ~ ~ ~ ~3 ~ ~3 ~0 ~ ~4
    execute at @e[tag=BoardPos_201] run clone ~ ~ ~ ~3 ~ ~3 ~4 ~ ~0
    execute at @e[tag=BoardPos_201] run clone ~ ~ ~ ~3 ~ ~3 ~4 ~ ~4