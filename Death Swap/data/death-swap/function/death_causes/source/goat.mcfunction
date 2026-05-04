# Logs the most recent damage source entity as: Goat
# Category id: 34
scoreboard players set @s ds_cause_source 34
advancement revoke @s only death-swap:death_causes/source/goat
execute if score %goat ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
