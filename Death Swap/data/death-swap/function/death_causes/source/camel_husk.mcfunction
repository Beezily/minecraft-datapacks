# Logs the most recent damage source entity as: Camel Husk
# Category id: 54
scoreboard players set @s ds_cause_source 54
advancement revoke @s only death-swap:death_causes/source/camel_husk
execute if score %camel_husk ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
