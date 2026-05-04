# Logs the most recent damage source entity as: Nautilus
# Category id: 37
scoreboard players set @s ds_cause_source 37
advancement revoke @s only death-swap:death_causes/source/nautilus
execute if score %nautilus ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
