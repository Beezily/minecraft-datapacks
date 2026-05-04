# Logs the most recent damage source entity as: Wolf
# Category id: 44
scoreboard players set @s ds_cause_source 44
advancement revoke @s only death-swap:death_causes/source/wolf
execute if score %wolf ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
