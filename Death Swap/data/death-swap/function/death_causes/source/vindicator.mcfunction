# Logs the most recent damage source entity as: Vindicator
# Category id: 26
scoreboard players set @s ds_cause_source 26
advancement revoke @s only death-swap:death_causes/source/vindicator
execute if score %vindicator ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
