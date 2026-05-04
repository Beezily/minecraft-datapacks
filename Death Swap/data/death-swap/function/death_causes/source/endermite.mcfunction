# Logs the most recent damage source entity as: Endermite
# Category id: 8
scoreboard players set @s ds_cause_source 8
advancement revoke @s only death-swap:death_causes/source/endermite
execute if score %endermite ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
