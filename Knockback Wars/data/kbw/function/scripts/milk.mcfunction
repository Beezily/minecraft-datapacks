#Witch replenish milk
clear @s bucket
effect clear @s
effect give @s minecraft:resistance infinite 4 true
give @s minecraft:milk_bucket[custom_name={text:"Magic Milk",color:"dark_purple",italic:false},lore=[{text:"Milk milked from a magic"},{text:"cow. This strange liquid"},{text:"flows endlessly."}],consumable={consume_seconds:0.1}] 1
