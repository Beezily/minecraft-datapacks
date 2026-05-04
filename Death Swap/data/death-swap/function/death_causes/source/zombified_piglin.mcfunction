# Logs the most recent damage source entity as: Zombified Piglin
# Category id: 46
scoreboard players set @s ds_cause_source 46
advancement revoke @s only death-swap:death_causes/source/zombified_piglin
execute if score %zombified_piglin ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
