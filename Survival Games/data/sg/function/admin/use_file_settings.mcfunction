# Run this function to use world settings map data
scoreboard players set %custom_settings sg 0
function sg:admin/world_settings
function sg:scripts/export_settings

tellraw @a {"bold":true,"color":"white","text":"Using file world settings now!"}
