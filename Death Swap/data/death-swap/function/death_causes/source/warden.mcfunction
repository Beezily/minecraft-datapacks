# Logs the most recent damage source entity as: Warden
# Category id: 27
scoreboard players set @s ds_cause_source 27
advancement revoke @s only death-swap:death_causes/source/warden
execute if score %warden ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
