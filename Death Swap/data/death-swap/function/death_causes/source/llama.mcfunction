# Logs the most recent damage source entity as: Llama
# Category id: 36
scoreboard players set @s ds_cause_source 36
advancement revoke @s only death-swap:death_causes/source/llama
execute if score %llama ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
