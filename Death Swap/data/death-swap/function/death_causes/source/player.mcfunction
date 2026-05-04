# Logs the most recent damage source entity as: Player
# Category id: 1
scoreboard players set @s ds_cause_source 1
advancement revoke @s only death-swap:death_causes/source/player
execute if score %player ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
