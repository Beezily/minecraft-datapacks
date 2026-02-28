# Tells self rules
tellraw @s {"text":""}

tellraw @s {"text":"Survival Games","color":"gold","bold":true}

tellraw @s {"text":""}

tellraw @s {"text":"Before the game starts:","color":"yellow","bold":true}
tellraw @s [{"text":"• ","color":"gray"},{"text":"Use ","color":"yellow"},{"text":"/trigger <team color>","color":"aqua","bold":true},{"text":" to join that team.","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Use ","color":"yellow"},{"text":"/trigger Solo","color":"white","bold":true},{"text":" to play alone.","color":"yellow"}]

tellraw @s {"text":""}

tellraw @s {"text":"Game Rules:","color":"gold","bold":true}
tellraw @s [{"text":"• ","color":"gray"},{"text":"The game lasts ","color":"yellow"},{"text":"20 minutes","color":"gold","bold":true},{"text":".","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"All players start with ","color":"yellow"},{"text":"Absorption III","color":"red","bold":true},{"text":" for 30 seconds and ","color":"yellow"},{"text":"10 seconds of grace period","color":"green","bold":true},{"text":".","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"The border starts shrinking at ","color":"yellow"},{"text":"10:00","color":"gold","bold":true},{"text":", reaching half size by ","color":"yellow"},{"text":"8:00","color":"gold","bold":true},{"text":".","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"The supply drop is announced at ","color":"yellow"},{"text":"8:00","color":"gold","bold":true},{"text":" and lands at ","color":"yellow"},{"text":"6:00","color":"gold","bold":true},{"text":".","color":"yellow"}]
tellraw @s [{"text":"  ","color":"gray"},{"text":"A ","color":"yellow"},{"text":"beacon","color":"aqua","bold":false},{"text":" and the ","color":"yellow"},{"text":"exact coordinates","color":"aqua","bold":false},{"text":" will point to it.","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"The border starts shrinking again at ","color":"yellow"},{"text":"5:00","color":"gold","bold":true},{"text":" and keeps shrinking until ","color":"yellow"},{"text":"deathmatch size","color":"red","bold":false},{"text":" at ","color":"yellow"},{"text":"0:00","color":"gold","bold":true},{"text":".","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Kills grant ","color":"yellow"},{"text":"3 levels","color":"green","bold":true},{"text":" and ","color":"yellow"},{"text":"Regeneration II","color":"light_purple","bold":true},{"text":" for 4 seconds.","color":"yellow"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"The ","color":"yellow"},{"text":"last player or team standing","color":"dark_red","bold":true},{"text":" wins!","color":"yellow"}]

tellraw @s {"text":""}

execute if score %ender_loot sg matches 1 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"Ender chests","color":"dark_purple","bold":true},{"text":" contain better loot and more chances at valuable items.","color":"gray"}]
execute if score %ender_loot sg matches 1 run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"Right-click once","color":"aqua","bold":false},{"text":" to generate the loot, then ","color":"gray"},{"text":"again","color":"aqua","bold":false},{"text":" to open it.","color":"gray"}]

tellraw @s {"text":""}

execute if score %summon_crafting sg matches 1 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"Crafting tables","color":"gold","bold":true},{"text":" can be summoned for ","color":"gray"},{"text":"15 seconds","color":"green","bold":true},{"text":" using ","color":"gray"},{"text":"/trigger craft","color":"aqua","bold":true},{"text":" while ","color":"gray"},{"text":"looking at a chest","color":"yellow"},{"text":".","color":"gray"}]
execute if score %summon_crafting sg matches 1 run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"Use the command again on the summoned crafting table to get it back instantly.","color":"gray"}]

tellraw @s {"text":""}

execute if score %summon_anvil sg matches 1 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"Anvils","color":"gray","bold":true},{"text":" can be summoned for ","color":"gray"},{"text":"15 seconds","color":"green","bold":true},{"text":" using ","color":"gray"},{"text":"/trigger anvil","color":"aqua","bold":true},{"text":" while ","color":"gray"},{"text":"looking at a chest","color":"yellow"},{"text":".","color":"gray"}]
execute if score %summon_anvil sg matches 1 run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"Use the command again on the summoned anvil to get it back instantly.","color":"gray"}]

tellraw @s {"text":""}

execute if score %summon_enchant sg matches 1 run tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"Enchanting tables","color":"light_purple","bold":true},{"text":" can be summoned for ","color":"gray"},{"text":"15 seconds","color":"green","bold":true},{"text":" using ","color":"gray"},{"text":"/trigger enchant","color":"aqua","bold":true},{"text":" while ","color":"gray"},{"text":"looking at a chest","color":"yellow"},{"text":".","color":"gray"}]
execute if score %summon_enchant sg matches 1 run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"Use the command again on the summoned enchanting table to get it back instantly.","color":"gray"}]

tellraw @s {"text":""}