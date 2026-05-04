# Logs the most recent damage source entity as: Trader Llama
# Category id: 43
scoreboard players set @s ds_cause_source 43
advancement revoke @s only death-swap:death_causes/source/trader_llama
execute if score %trader_llama ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
