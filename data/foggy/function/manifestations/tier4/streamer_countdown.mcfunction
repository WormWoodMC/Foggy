# Streamer countdown system - Enhanced for v2.0.0
execute if score #foggy foggy.streamer_mode matches 1 run title @a[distance=..32] actionbar [{"text":"⚠ JUMPSCARE IN 1... ⚠","color":"red","bold":true}]
schedule function foggy:manifestations/tier4/streamer_jump 20t
