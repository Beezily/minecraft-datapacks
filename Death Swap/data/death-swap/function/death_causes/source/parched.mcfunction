# Logs the most recent damage source entity as: Parched
# Category id: 15
scoreboard players set @s ds_cause_source 15
advancement revoke @s only death-swap:death_causes/source/parched
execute if score %parched ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
