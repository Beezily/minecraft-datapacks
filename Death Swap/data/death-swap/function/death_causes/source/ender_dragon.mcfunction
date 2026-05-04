# Logs the most recent damage source entity as: Ender Dragon
# Category id: 52
scoreboard players set @s ds_cause_source 52
advancement revoke @s only death-swap:death_causes/source/ender_dragon
execute if score %ender_dragon ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
