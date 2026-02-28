# Helper function to join a team spawn by setting team score to %next then incrementing %next
scoreboard players operation @s Purple = %next Purple
scoreboard players add %next Purple 1
