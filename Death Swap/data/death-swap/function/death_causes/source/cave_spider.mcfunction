# Logs the most recent damage source entity as: Cave Spider
# Category id: 29
scoreboard players set @s ds_cause_source 29
advancement revoke @s only death-swap:death_causes/source/cave_spider
execute if score %cave_spider ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
