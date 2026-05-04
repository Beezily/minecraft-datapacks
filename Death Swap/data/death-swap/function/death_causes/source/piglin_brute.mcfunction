# Logs the most recent damage source entity as: Piglin Brute
# Category id: 17
scoreboard players set @s ds_cause_source 17
advancement revoke @s only death-swap:death_causes/source/piglin_brute
execute if score %piglin_brute ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
