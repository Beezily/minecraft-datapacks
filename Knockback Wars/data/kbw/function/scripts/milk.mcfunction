#Witch replenish milk
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:darkness",amplifier:1b}]}] unless entity @s[scores={ensnare=1..}] run effect clear @s minecraft:slowness
effect clear @s minecraft:poison
effect clear @s minecraft:nausea
execute if items entity @s weapon.mainhand minecraft:bucket run item replace entity @s weapon.mainhand with milk_bucket[custom_name={"color":"dark_purple","italic":false,"text":"Magic Milk"},lore=["Milk milked from a magic","cow. This strange liquid","flows endlessly."],consumable={consume_seconds:0.1,animation:"drink",sound:"entity.generic.drink"}] 1
