# Logs the most recent damage source entity as: Pufferfish
# Category id: 41
scoreboard players set @s ds_cause_source 41
advancement revoke @s only death-swap:death_causes/source/pufferfish
execute if score %pufferfish ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
