# Logs the most recent damage source entity as: Ghast
# Category id: 10
scoreboard players set @s ds_cause_source 10
advancement revoke @s only death-swap:death_causes/source/ghast
execute if score %ghast ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
