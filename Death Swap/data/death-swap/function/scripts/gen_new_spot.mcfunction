# Kill old dsCenter marker, then generate new dsCenter marker
# Calls go_new_spot which makes all players teleport there too
execute as @e[type=marker,tag=dsCenter] run function death-swap:scripts/kill_unload
kill @e[type=marker,tag=dsCenter]

summon marker ~ 63 ~ {Tags:["dsCenter"]}
execute as @e[type=marker,tag=dsCenter] run function death-swap:scripts/go_new_spot
