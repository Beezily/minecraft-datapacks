# Logs the most recent damage source entity as: Elder Guardian
# Category id: 7
scoreboard players set @s ds_cause_source 7
advancement revoke @s only death-swap:death_causes/source/elder_guardian
execute if score %elder_guardian ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
