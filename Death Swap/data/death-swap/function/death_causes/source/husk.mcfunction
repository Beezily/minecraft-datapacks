# Logs the most recent damage source entity as: Husk
# Category id: 13
scoreboard players set @s ds_cause_source 13
advancement revoke @s only death-swap:death_causes/source/husk
execute if score %husk ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
