# Helper function to join a team spawn by setting team score to %next then incrementing %next
scoreboard players operation @s Yellow = %next Yellow
scoreboard players add %next Yellow 1
