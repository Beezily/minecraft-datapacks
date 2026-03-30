# Helper function to join a team spawn by setting team score to %team_count then incrementing %team_count
scoreboard players operation @s Blue = %team_count Blue
scoreboard players add %team_count Blue 1
