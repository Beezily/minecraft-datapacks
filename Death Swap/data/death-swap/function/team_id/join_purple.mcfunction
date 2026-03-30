# Helper function to join a team spawn by setting team score to %team_count then incrementing %team_count
scoreboard players operation @s Purple = %team_count Purple
scoreboard players add %team_count Purple 1
