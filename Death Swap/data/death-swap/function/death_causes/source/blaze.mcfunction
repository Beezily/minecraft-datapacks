# Logs the most recent damage source entity as: Blaze
# Category id: 2
scoreboard players set @s ds_cause_source 2
advancement revoke @s only death-swap:death_causes/source/blaze
execute if score %blaze ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
