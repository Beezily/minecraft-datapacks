# Logs the most recent damage source entity as: Stray
# Category id: 24
scoreboard players set @s ds_cause_source 24
advancement revoke @s only death-swap:death_causes/source/stray
execute if score %stray ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
