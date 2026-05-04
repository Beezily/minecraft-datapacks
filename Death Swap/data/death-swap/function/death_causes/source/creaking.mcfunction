# Logs the most recent damage source entity as: Creaking
# Category id: 5
scoreboard players set @s ds_cause_source 5
advancement revoke @s only death-swap:death_causes/source/creaking
execute if score %creaking ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
