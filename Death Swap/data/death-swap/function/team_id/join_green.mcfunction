# Helper function to join a team spawn by setting team score to %team_count then incrementing %team_count
scoreboard players operation @s Green = %team_count Green
scoreboard players add %team_count Green 1
