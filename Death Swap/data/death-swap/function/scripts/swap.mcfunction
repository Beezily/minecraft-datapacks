# SWAP MARKERS ARE GENERATED IN next_group_id SO DON'T NEED TO DO HERE
# Make all players have a unique group id. This also leaves players with no score with dsTrim tag
function death-swap:team_id/gen_group_ids

# This function is run by all players with no dsTrim and it basically finds and teleport to target marker, killing it
execute as @a[tag=!dsTrim] run function death-swap:team_id/find_target_tp

# Each dsTrim player will tp to a random teammate (We ignore solo case, solo players cannot be trimmed)
# Each team tp is its own function so that @r is truly random
# Also sets group score to the random teammate. This is to give credit to kills in lockout mode
execute as @a[tag=dsTrim,team=Red] run function death-swap:tp/red_team_tp
execute as @a[tag=dsTrim,team=Yellow] run function death-swap:tp/yellow_team_tp
execute as @a[tag=dsTrim,team=Blue] run function death-swap:tp/blue_team_tp
execute as @a[tag=dsTrim,team=Green] run function death-swap:tp/green_team_tp
execute as @a[tag=dsTrim,team=Aqua] run function death-swap:tp/aqua_team_tp
execute as @a[tag=dsTrim,team=Purple] run function death-swap:tp/purple_team_tp
tag @a[tag=dsTrim] remove dsTrim
