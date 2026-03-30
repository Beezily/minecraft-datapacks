# Helper function to join a team spawn by setting team score to %team_count then incrementing %team_count
scoreboard players operation @s Aqua = %team_count Aqua
scoreboard players add %team_count Aqua 1
