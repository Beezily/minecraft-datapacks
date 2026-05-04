# Logs the most recent damage source entity as: Enderman
# Category id: 32
scoreboard players set @s ds_cause_source 32
advancement revoke @s only death-swap:death_causes/source/enderman
execute if score %enderman ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
