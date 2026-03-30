# Helper function to join a team spawn by setting team score to %team_count then incrementing %team_count
scoreboard players operation @s Red = %team_count Red
scoreboard players add %team_count Red 1
