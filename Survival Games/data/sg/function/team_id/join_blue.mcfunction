# Helper function to join a team spawn by setting team score to %next then incrementing %next
scoreboard players operation @s Blue = %next Blue
scoreboard players add %next Blue 1
