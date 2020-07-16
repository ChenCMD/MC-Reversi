kill @e[tag=hologram_001,scores={hologram_id_001=2000..2100}]
kill @e[tag=hologram.overlay.0_201]
kill @e[tag=hologram.overlay.1_201]
data modify storage utility_001:hologram_util TextGroup set from storage reversi_201:menu Default.Setting
execute positioned 2072.5 44.0 38.8 rotated 90 0 run function utility_001:hologram_util/api/create
function reversi_201:menu/action/setting._overlay