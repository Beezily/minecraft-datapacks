# Helper function to join a team spawn by setting team score to %next then incrementing %next
scoreboard players operation @s Red = %next Red
scoreboard players add %next Red 1
