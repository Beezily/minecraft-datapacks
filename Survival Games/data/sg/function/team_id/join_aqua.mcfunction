# Helper function to join a team spawn by setting team score to %next then incrementing %next
scoreboard players operation @s Aqua = %next Aqua
scoreboard players add %next Aqua 1
