# Run this function to use your own triggers settings map data
scoreboard players set %custom_settings sg 1

tellraw @a {"bold":true,"color":"white","text":"Using custom world settings now! Use /trigger to set them!"}
tellraw @s {"bold":false,"color":"white","text":"Warning: You will only get each trigger once, use"}
tellraw @s {"bold":false,"color":"white","text":"/function sg:admin/use_trigger_settings again to"}
tellraw @s {"bold":false,"color":"white","text":"set the values again!"}

# Admin mode score (for main)
scoreboard players set %admin sg 0
scoreboard players set @s admin 1
function sg:scripts/admin_main
