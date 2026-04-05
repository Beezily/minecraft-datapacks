# Tells self rules
tellraw @s {"text":""}

tellraw @s {"text":"Death Swap","color":"green","bold":true}

tellraw @s {"text":""}

tellraw @s {"text":"Before the game starts:","color":"yellow","bold":true}
tellraw @s [{"text":"• ","color":"gray"},{"text":"Use ","color":"yellow"},{"text":"/trigger <team color>","color":"aqua","bold":true},{"text":" to join that team.","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Use ","color":"yellow"},{"text":"/trigger Solo","color":"white","bold":true},{"text":" to play alone.","color":"yellow"}]

tellraw @s {"text":""}

tellraw @s {"text":"Game Rules:","color":"gold","bold":true}
tellraw @s [{"text":"• ","color":"gray"},{"text":"The game lasts for ","color":"yellow"},{"score":{"name":"%final_iteration","objective":"ds"},"color":"gold","bold":true},{"text":" rounds","color":"gold","bold":true},{"text":". Each round lasts ","color":"yellow"},{"text":"5 minutes","color":"gold","bold":true},{"text":".","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Once the timer runs out, you will ","color":"yellow"},{"text":"swap with a random player from a different team","color":"light_purple"},{"text":" and need to ","color":"yellow"},{"text":"survive for 30 seconds","color":"aqua","bold":true},{"text":".","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Your goal is to ","color":"yellow"},{"text":"minimize deaths","color":"dark_red","bold":true},{"text":".","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Dying before the swap","color":"red","bold":true},{"text":" counts as a death for that round.","color":"yellow"}]

execute if score %nerf_lava ds matches 1 run tellraw @s {"text":""}
execute if score %nerf_lava ds matches 1 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"Lava","color":"#ff6a00","bold":true},{"text":" is ","color":"gray"},{"text":"slightly nerfed","color":"red","bold":true},{"text":"! Players will get ","color":"gray"},{"text":"Fire Resistance","color":"gold","bold":false},{"text":" for ","color":"gray"},{"text":"3 seconds","color":"green","bold":false},{"text":" upon swap.","color":"gray"}]

execute if score %nerf_obsidian ds matches 1 run tellraw @s {"text":""}
execute if score %nerf_obsidian ds matches 1 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"Obsidian trapping","color":"dark_purple","bold":true},{"text":" is ","color":"gray"},{"text":"slightly nerfed","color":"red","bold":true},{"text":"! Obsidian blocks will be broken ","color":"gray"},{"text":"only at the exact moment","color":"aqua"},{"text":" of the swap.","color":"gray"}]

execute if score %clear_rounds ds matches 1 run tellraw @s {"text":""}
execute if score %clear_rounds ds matches 1 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"Inventories","color":"aqua","bold":true},{"text":" will be ","color":"gray"},{"text":"cleared","color":"yellow","bold":true},{"text":" at the start of each round.","color":"gray"}]

tellraw @s {"text":""}

execute if score %pvp ds matches 1 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"PVP is enabled.","color":"red","bold":true}]
execute if score %pvp ds matches 0 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"PVP is disabled.","color":"green","bold":true}]

execute if score %team_tp ds matches 1 run tellraw @s {"text":""}
execute if score %team_tp ds matches 1 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"Team teleport","color":"light_purple","bold":true},{"text":" is enabled.","color":"gray"}]
execute if score %team_tp ds matches 1 run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"You get ","color":"gray"},{"text":"only one","color":"yellow","bold":false},{"text":" team teleport per round, and it will teleport you to a ","color":"gray"},{"text":"random teammate","color":"aqua","bold":false},{"text":".","color":"gray"}]
execute if score %team_tp ds matches 1 run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"You will receive ","color":"gray"},{"text":"Regeneration III","color":"gold","bold":false},{"text":" for ","color":"gray"},{"text":"4 seconds","color":"green","bold":false},{"text":" after teleporting.","color":"gray"}]

tellraw @s {"text":""}