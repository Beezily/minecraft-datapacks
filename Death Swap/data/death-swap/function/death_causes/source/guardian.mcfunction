# Logs the most recent damage source entity as: Guardian
# Category id: 11
scoreboard players set @s ds_cause_source 11
advancement revoke @s only death-swap:death_causes/source/guardian
execute if score %guardian ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
