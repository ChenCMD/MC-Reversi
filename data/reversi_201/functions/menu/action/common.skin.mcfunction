kill @e[tag=hologram_001,scores={hologram_id_001=2000..2100},distance=..200,x=2069.0,y=40.0,z=21.0]
kill @e[tag=hologram.overlay.0_201,distance=..200,x=2069.0,y=40.0,z=21.0]
kill @e[tag=hologram.overlay.1_201,distance=..200,x=2069.0,y=40.0,z=21.0]
data modify storage utility_001:hologram_util TextGroup set from storage reversi_201:menu Default.Skin
execute positioned 2072.5 44.0 38.8 rotated 90 0 run function utility_001:hologram_util/api/create