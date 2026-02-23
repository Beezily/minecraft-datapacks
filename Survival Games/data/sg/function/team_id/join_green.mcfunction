# Helper function to join a team spawn by setting team score to %next then incrementing %next
scoreboard players operation @s Green = %next Green
scoreboard players add %next Green 1
