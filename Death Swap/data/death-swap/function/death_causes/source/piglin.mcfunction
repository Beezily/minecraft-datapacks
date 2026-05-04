# Logs the most recent damage source entity as: Piglin
# Category id: 39
scoreboard players set @s ds_cause_source 39
advancement revoke @s only death-swap:death_causes/source/piglin
execute if score %piglin ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
