# Logs the most recent damage source entity as: Bogged
# Category id: 3
scoreboard players set @s ds_cause_source 3
advancement revoke @s only death-swap:death_causes/source/bogged
execute if score %bogged ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
