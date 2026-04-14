# # # Knockback Wars Datapack - Bzlbzlbzl # # #

#Always Effects and Kit Effects; weather clear; bye bye ground arrows
weather clear
effect give @a minecraft:resistance infinite 4 true
execute as @a run function kbw:scripts/saturation_check
kill @e[type=minecraft:arrow,nbt={inGround:1b}]
effect give @a[team=Reaper] minecraft:invisibility 1 0 true
effect give @a[team=Reaper] minecraft:speed 1 0 true
effect give @a[team=Ghost] minecraft:invisibility 1 0 true
effect give @a[team=Pyromaniac] minecraft:fire_resistance 1 0 true
effect give @a[team=Assassin] minecraft:speed 1 0 true
effect give @a[team=Knight] minecraft:slowness 1 1 true

#Getting count of players with %count
# REMOVED: We can just do this on the sign
#execute store result score %count wins if entity @a[scores={queue=1}]

#Starting the game based on the %countdown; first countdown, when finally 0 then runs start function
# NOTE: Command "execute if score %game wins matches 0 if score %count wins matches 2.. run scoreboard players set %countdown wins 100" run from elsewhere required to start this
execute if score %countdown wins matches 110 as @a unless entity @s[scores={queue=1..}] run tellraw @s [{"bold":true,"color":"red","text":"NOTE: You have not queued for this game yet. \n"},{"bold":true,"color":"red","text":"You can still join if you click the sign before the game starts."}]
execute if score %countdown wins matches 110 as @a unless entity @s[scores={queue=1..}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 1 1
execute if score %countdown wins matches 100 positioned 0 70 34 align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["kbwQueueMarker"],Glowing:1b,glow_color_override:16733525,shadow_radius:0f,width:0.998f,height:0.498f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.001f,0.27183334f,0.8968333f],scale:[0.998f,0.498f,0.081333336f]},block_state:{Name:"minecraft:black_concrete"}}
execute if score %countdown wins matches 100 positioned -34 70 0 align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["kbwQueueMarker"],Glowing:1b,glow_color_override:16733525,shadow_radius:0f,width:0.998f,height:0.498f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.021833334f,0.27183334f,0.001f],scale:[0.081333336f,0.498f,0.998f]},block_state:{Name:"minecraft:black_concrete"}}
execute if score %countdown wins matches 100 positioned 0 70 -34 align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["kbwQueueMarker"],Glowing:1b,glow_color_override:16733525,shadow_radius:0f,width:0.998f,height:0.498f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.001f,0.27183334f,0.021833334f],scale:[0.998f,0.498f,0.081333336f]},block_state:{Name:"minecraft:black_concrete"}}
execute if score %countdown wins matches 100 positioned 34 70 0 align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["kbwQueueMarker"],Glowing:1b,glow_color_override:16733525,shadow_radius:0f,width:0.998f,height:0.498f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.8968333f,0.27183334f,0.001f],scale:[0.081333336f,0.498f,0.998f]},block_state:{Name:"minecraft:black_concrete"}}

execute if score %countdown wins matches 100 run tellraw @a ["",{"text":"Starting in "},{"text":"5","bold":true,"color":"#DB00EB"},{"text":"..."}]
execute if score %countdown wins matches 100 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if score %countdown wins matches 80 run tellraw @a ["",{"text":"Starting in "},{"text":"4","bold":true,"color":"#009DD6"},{"text":"..."}]
execute if score %countdown wins matches 80 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if score %countdown wins matches 60 run tellraw @a ["",{"text":"Starting in "},{"text":"3","bold":true,"color":"dark_green"},{"text":"..."}]
execute if score %countdown wins matches 60 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if score %countdown wins matches 40 run tellraw @a ["",{"text":"Starting in "},{"text":"2","bold":true,"color":"gold"},{"text":"..."}]
execute if score %countdown wins matches 40 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if score %countdown wins matches 20 run tellraw @a ["",{"text":"Starting in "},{"text":"1","bold":true,"color":"dark_red"},{"text":"..."}]
execute if score %countdown wins matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if score %countdown wins matches 0 run tellraw @a {"text":"START!","bold":true,"color":"blue"}
execute if score %countdown wins matches 0 run function kbw:scripts/start
execute if score %countdown wins matches 0 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
execute if score %countdown wins matches 0 run title @a subtitle {"color":"white","shadow_color":-43691,"text":"First to 100 points wins!"}
execute if score %countdown wins matches 0 run title @a title {"color":"white","shadow_color":-11184641,"text":"Game Start!"}

# Shulker remove mechanics
scoreboard players add @e[type=block_display,tag=kbwQueueMarker] calculation 1
kill @e[type=block_display,tag=kbwQueueMarker,scores={calculation=100..}]

#Ghost head mechanics
execute as @a[team=Ghost] unless items entity @s armor.head minecraft:jack_o_lantern[custom_data~{ghost:1b}] run item replace entity @s armor.head with minecraft:jack_o_lantern[custom_name={text:'Possessed Mask',color:'gray',italic:false},lore=[{text:'Even with a physical head,'},{text:'attacks just seem to pass'},{text:'right through you.'}],attribute_modifiers=[{id:'ghost:mask_knockback_resistance',type:'minecraft:knockback_resistance',amount:0.25,operation:'add_value',slot:'head'}],custom_data={ghost:1b},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,enchantments={"binding_curse":1}]
clear @a[team=!Ghost] minecraft:jack_o_lantern[minecraft:custom_data~{ghost:1b}]
#execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{ghost:1b}] run kill @s

#Reaper armor mechanics
execute as @a[team=Reaper] unless items entity @s armor.head minecraft:leather_helmet[custom_data~{reaper:1b},dyed_color=0] run item replace entity @s armor.head with minecraft:leather_helmet[custom_name={text:"Reaper's Hood",color:'black',italic:false},lore=[{text:"Nobody knows what's under"},{text:'this hood... not even you.'}],dyed_color=0,unbreakable={},tooltip_display={hidden_components:['minecraft:enchantments','minecraft:unbreakable']},attribute_modifiers=[{id:'movement_speed',type:'minecraft:movement_speed',amount:0.05,operation:'add_multiplied_base',slot:'head'}],custom_data={reaper:1b},enchantments={binding_curse:1},enchantment_glint_override=false]
execute as @a[team=Reaper] unless items entity @s armor.chest minecraft:leather_chestplate[custom_data~{reaper:1b},dyed_color=0] run item replace entity @s armor.chest with minecraft:leather_chestplate[custom_name={text:"Reaper's Robe",color:'black',italic:false},lore=[{text:"Your body isn't as"},{text:'tangible as the living.'}],dyed_color=0,unbreakable={},tooltip_display={hidden_components:['minecraft:enchantments','minecraft:unbreakable']},attribute_modifiers=[{id:'movement_speed',type:'minecraft:movement_speed',amount:0.05,operation:'add_multiplied_base',slot:'head'}],custom_data={reaper:1b},enchantments={binding_curse:1},enchantment_glint_override=false]
clear @a[team=!Reaper] minecraft:leather_helmet[minecraft:custom_data~{reaper:1b}]
clear @a[team=!Reaper] minecraft:leather_chestplate[minecraft:custom_data~{reaper:1b}]

#Bow kit mechanics when has weakness (stunned)
execute as @a[team=Archer,tag=inGame,nbt={Inventory:[{id:"minecraft:arrow"}],active_effects:[{id:"minecraft:weakness"}]}] run clear @s minecraft:arrow
execute as @a[team=Archer,tag=inGame,nbt=!{Inventory:[{id:"minecraft:arrow"}]},nbt=!{active_effects:[{id:"minecraft:weakness"}]}] run give @s minecraft:arrow[custom_name={text:"Arrow",color:"aqua",italic:false}] 1
execute as @a[team=,tag=inGame,nbt={Inventory:[{id:"minecraft:arrow"}],active_effects:[{id:"minecraft:weakness"}]}] run clear @s minecraft:arrow
execute as @a[team=,tag=inGame,nbt=!{Inventory:[{id:"minecraft:arrow"}]},nbt=!{active_effects:[{id:"minecraft:weakness"}]}] run give @s minecraft:arrow 1

#Archer trap mechanics; turtle spawn; particles; function kbw:scripts/ensnare
execute as @e[type=minecraft:turtle,tag=archerTrap] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["archerTrap"]}
execute as @e[type=minecraft:turtle,tag=archerTrap] at @s run playsound minecraft:block.gravel.hit master @a[team=Archer] ~ ~ ~ 0.4 0.7
execute as @e[type=minecraft:turtle,tag=archerTrap] at @s run playsound minecraft:block.bamboo.break master @a[team=Archer] ~ ~ ~ 2 0.2
execute as @e[type=minecraft:turtle,tag=archerTrap] at @s run tp @s ~ -1 ~
execute as @e[type=minecraft:turtle,tag=archerTrap] at @s run kill @s
execute at @e[tag=archerTrap,type=minecraft:armor_stand] run particle minecraft:totem_of_undying ~ ~0.1 ~ 0.4 0 0.4 0 3 force @a[team=Archer]
execute as @e[tag=archerTrap,type=minecraft:armor_stand] at @s if entity @a[team=!Archer,distance=..0.7] run function kbw:scripts/ensnare
# Unsnare
execute as @a[scores={ensnare=1}] run attribute @s minecraft:jump_strength base set 0.42
scoreboard players remove @a[scores={ensnare=1..}] ensnare 1

#Witch particle, potion and milk mechanics (potion mechanics uses pyroFlail scoreboard cuz I didn't want to make another objective)
execute if score %game wins matches 1 if score %timer wins matches 10 as @a[team=Witch] if items entity @s weapon.mainhand minecraft:stick[custom_data~{wand:1b}] at @s run particle minecraft:instant_effect ~ ~ ~ 0 0 0 0 3
execute as @a[team=Witch,tag=inGame] if items entity @s weapon.mainhand minecraft:bucket run function kbw:scripts/milk
execute as @a[team=Witch,tag=inGame,scores={calculation=..0}] unless items entity @s weapon.offhand * at @s run function kbw:scripts/potion
execute as @a[team=Witch,tag=inGame,nbt=!{active_effects:[{id:"minecraft:weakness"}]}] unless items entity @s weapon.offhand * run scoreboard players remove @s calculation 1

#Pyromaniac flail mechanics
execute if score %game wins matches 1 at @e[type=minecraft:fireball,tag=pyroFireball] run particle minecraft:dust{color:[1.0,0.2,0.1],scale:1.5} ~ ~ ~ 0.07 0 0.07 0 3 normal @a
scoreboard players set @a[team=Pyromaniac,scores={calculation=0}] pyroFlail 0
execute as @a[team=Pyromaniac,tag=inGame,scores={pyroFlail=1..,calculation=..0},nbt=!{active_effects:[{id:"minecraft:weakness"}]}] at @s run function kbw:scripts/fireball
execute as @a[team=Pyromaniac,tag=inGame,scores={calculation=0..}] run scoreboard players remove @s calculation 1

#Pyromaniac slam mechanics
execute as @a[team=Pyromaniac,tag=inGame,tag=pyroSlamming] at @s run particle flame ~ ~1 ~ 0.5 1 0.5 0.1 5 normal @a
execute as @a[team=Pyromaniac,tag=inGame,predicate=kbw:sneaking,nbt={SelectedItem:{components:{"minecraft:custom_data":{pyroSlam:1b}}},OnGround:0b},tag=!pyroSlamming] at @s if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air run playsound block.respawn_anchor.charge master @s ~ ~ ~ 1 2 1
execute as @a[team=Pyromaniac,tag=inGame,predicate=kbw:sneaking,nbt={SelectedItem:{components:{"minecraft:custom_data":{pyroSlam:1b}}},OnGround:0b},tag=!pyroSlamming] at @s if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air run attribute @s gravity base set 0.5
execute as @a[team=Pyromaniac,tag=inGame,predicate=kbw:sneaking,nbt={SelectedItem:{components:{"minecraft:custom_data":{pyroSlam:1b}}},OnGround:0b},tag=!pyroSlamming] at @s if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air run tag @s add pyroSlamming
execute as @a[team=Pyromaniac,tag=inGame,tag=pyroSlamming,tag=!pyroSlamLegit] store result score @s pyroSlam run data get entity @s fall_distance
execute as @a[team=Pyromaniac,tag=inGame,tag=pyroSlamming,tag=!pyroSlamLegit,scores={pyroSlam=3..}] run tag @s add pyroSlamLegit
execute as @a[team=Pyromaniac,tag=inGame,tag=pyroSlamming,nbt={OnGround:1b}] at @s run function kbw:scripts/slam

# Grim Reaper mechanics
#Swapping to diamond hoe and swapping back
execute as @a[team=Reaper,nbt={SelectedItem:{components:{"minecraft:custom_data":{scythe:2b}}}},nbt=!{fall_distance:0.0d},predicate=kbw:sneaking,scores={calculation=..0}] run function kbw:scripts/rend_prep
execute as @a[team=Reaper,nbt={Inventory:[{components:{"minecraft:custom_data":{scythe:3b}}}],fall_distance:0.0d},scores={calculation=..0}] run function kbw:scripts/rend_unprep

#Scoreboard updates to 0 right before they can use ability again
scoreboard players reset @a[team=Reaper,scores={calculation=0}] rend
scoreboard players reset @a[team=Reaper,scores={calculation=0}] reap
scoreboard players reset @a[team=Reaper,scores={calculation=0}] attack

#Reap and rend abilities (rend doesnt check for sneaking cuz it already does before)
execute as @a[team=Reaper,scores={rend=1..,calculation=..0}] at @s rotated ~180 0 run function kbw:scripts/rend
execute as @a[team=Reaper,predicate=kbw:sneaking,scores={reap=1..,calculation=..0}] at @s rotated ~ 0 run function kbw:scripts/reap
execute as @a[team=Reaper,predicate=kbw:sneaking,scores={attack=1..,calculation=..0}] at @s rotated ~ 0 run function kbw:scripts/reap

#Decreasing scoreboard values by 1 every tick
scoreboard players reset @a[team=Reaper,scores={rend=1..}] rend
scoreboard players reset @a[team=Reaper,scores={reap=1..}] reap
scoreboard players reset @a[team=Reaper,scores={attack=1..}] attack
execute as @a[team=Reaper,tag=inGame,scores={calculation=0..}] run scoreboard players remove @s calculation 1

#Effects for when Reaper has stolen a soul, and when they lose it
execute as @a[team=Reaper,tag=inGame,scores={calculation=20..}] at @s run particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
execute as @a[team=Reaper,tag=inGame,scores={calculation=20}] at @s run particle minecraft:smoke ~ ~0.8 ~ 0.25 0.6 0.25 0.05 90 normal
execute as @a[team=Reaper,tag=inGame,scores={calculation=20}] at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.6 2
execute as @a[team=Reaper,tag=inGame,scores={calculation=20}] run attribute @s minecraft:attack_knockback base set 0

#Effects for when others lost their soul and get it back
execute as @e[nbt={active_effects:[{id:"minecraft:darkness",amplifier:1b}]}] at @s run particle minecraft:smoke ~ ~1 ~ 0.2 0.5 0.2 0 2 normal
execute as @e[nbt={active_effects:[{id:"minecraft:darkness",duration:20,amplifier:1b}]}] at @s run particle minecraft:soul ~ ~1 ~ 0.35 0.5 0.35 0.01 20 normal
execute as @e[nbt={active_effects:[{id:"minecraft:darkness",duration:20,amplifier:1b}]}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.3 0.3

#Passive weapon effects
execute as @a[team=Reaper,predicate=kbw:soul] if items entity @s weapon.mainhand *[custom_data~{scythe:2b}] at @s run particle minecraft:soul ~ ~1 ~ 0.15 0.5 0.15 0.02 1 normal

#Returning sythe mechanics and effects
scoreboard players remove @e[type=minecraft:armor_stand,tag=reapScythe,scores={calculation=1..}] calculation 1
execute as @e[type=minecraft:armor_stand,tag=reapScythe,scores={calculation=1..20}] at @s run tp @s ~ ~0.1 ~
execute as @e[type=minecraft:armor_stand,tag=reapScythe,scores={calculation=4}] at @s positioned ~-0.4 64 ~-0.7 run particle minecraft:item{item:"minecraft:soul_sand"} ~ ~0.05 ~ 0.2 0.1 0.2 0.1 20 normal
execute as @e[type=minecraft:armor_stand,tag=reapScythe,predicate=kbw:soul] at @s positioned ~-0.4 64 ~-0.7 run particle minecraft:soul ~ ~0 ~ 0.5 0 0.5 0.03 7
execute as @e[type=minecraft:armor_stand,tag=reapScythe,scores={calculation=0}] at @s positioned ~-0.4 64 ~-0.7 if entity @e[type=minecraft:player,team=Reaper,tag=noScythe,distance=..1,scores={calculation=..19}] run function kbw:scripts/scythe

#Duelist shield mechanics (I could have put the offhand + shield check in the same scan by separating w/ commas, but the point is they're different)
execute as @a[team=Duelist,tag=inGame,scores={damage=0..,last_sprint=1},nbt=!{fall_distance:0.0d}] if items entity @s weapon.mainhand *[custom_data~{duelist:1b}] unless items entity @s container.* minecraft:shield unless items entity @s weapon.offhand * run item replace entity @s weapon.offhand with minecraft:shield[custom_name={text:"Shield",color:"red",italic:false},lore=[{text:"Upon broken, stuns all nearby"},{text:"enemies briefly. Restores"},{text:"after every clean axe crit."}],custom_data={duelist:2b},unbreakable={},tooltip_display={hidden_components:["minecraft:unbreakable"]}] 1
execute as @a[team=Duelist,scores={blocked=0..}] run clear @s minecraft:shield[custom_data~{duelist:2b}]
execute as @a[team=Duelist,scores={blocked=0..}] at @s as @e[distance=..5,type=!#impact_projectiles,type=!armor_stand,type=!ender_pearl,type=!minecraft:splash_potion,type=!minecraft:lingering_potion] unless score @s blocked matches 0.. run effect give @s minecraft:weakness 2 10 true
execute as @a[team=Duelist,scores={blocked=0..}] at @s as @e[distance=..5,type=!#impact_projectiles,type=!armor_stand,type=!ender_pearl,type=!minecraft:splash_potion,type=!minecraft:lingering_potion] run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 0.9
execute as @a[team=Duelist,scores={blocked=0..}] at @s run particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 normal
execute as @a[team=Duelist,scores={blocked=0..}] at @s run particle minecraft:poof ~ ~1.2 ~ 1 0.3 0.8 1 10 normal
execute as @a[team=Duelist,scores={blocked=0..}] at @s as @e[distance=..5,type=!#impact_projectiles,type=!armor_stand,type=!ender_pearl,type=!minecraft:splash_potion,type=!minecraft:lingering_potion] unless score @s blocked matches 0.. at @s run particle minecraft:angry_villager ~ ~0.5 ~ 0.4 0.5 0.4 0 5 normal

#Builder block mechanics
execute if score %game wins matches 1 run fill 18 68 -18 -18 64 18 minecraft:air replace minecraft:dead_tube_coral_block
execute if score %game wins matches 1 run fill 19 69 -19 -19 71 19 minecraft:air replace minecraft:tube_coral_block
execute unless score %game wins matches 1 if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{builder:1b}}}]}] run fill 19 69 -19 -19 71 19 minecraft:air replace minecraft:tube_coral_block
execute unless score %game wins matches 1 if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{builder:1b}}}]}] run fill 18 68 -18 -18 64 18 minecraft:air replace minecraft:dead_tube_coral_block
execute if score %game wins matches 1 if score %timer wins matches 0 run scoreboard players add %blocks wins 1
execute if score %game wins matches 1 if score %blocks wins matches 2 as @a[team=Builder,tag=inGame] unless entity @s[nbt={Inventory:[{Count:64b,components:{"minecraft:custom_data":{builder:1b}}}]}] run give @s minecraft:tube_coral_block[can_place_on=[{blocks:["minecraft:red_terracotta","minecraft:glowstone","minecraft:white_wool","minecraft:lime_wool","minecraft:sand","minecraft:tube_coral_block"]}],custom_name={text:"Building Block",color:"blue",italic:false},lore=[{text:"These blocks don't last forever..."},{text:"Luckily you've got tons more"}],custom_data={builder:1b},enchantments={"minecraft:knockback":2},tooltip_display={hidden_components:["can_place_on"]}] 1
execute if score %blocks wins matches 2.. run scoreboard players set %blocks wins 0

#Ending game if not enough players; message and set %game to 0
execute if score %game wins matches 1 unless entity @a[tag=inGame] run tellraw @a {"text":"The game ended with no winner.","bold":true,"color":"gray"}
execute if score %game wins matches 1 unless entity @a[tag=inGame] run function kbw:scripts/end

#Ending game if someone reaches a score of 100
execute as @a[tag=inGame,scores={score=100..}] run tellraw @a ["",{"selector":"@s","bold":true},{"text":" has won the game!","bold":true,"color":"gold"}]
scoreboard players add @a[tag=inGame,scores={score=100..}] wins 1
experience add @a[tag=inGame,scores={score=100..}] 1 levels
execute as @a[tag=inGame,scores={score=100..}] at @s run scoreboard players set @s jingle -40
execute if entity @a[tag=inGame,scores={score=100..}] as @a[tag=inGame,scores={score=..99}] at @s run scoreboard players set @s jingle 30
execute if entity @a[tag=inGame,scores={score=100..}] run function kbw:scripts/end

#Ending jingles
execute as @a[scores={jingle=30}] at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.189207
execute as @a[scores={jingle=25}] at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.122462
execute as @a[scores={jingle=20}] at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.059463
execute as @a[scores={jingle=15}] at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1
execute as @a[scores={jingle=1}] at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0.707107

#execute as @a[scores={jingle=-30}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.6
execute as @a[scores={jingle=-40}] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,Tags:["celebrate"],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"star",colors:[16711680],fade_colors:[16712695]}]}}}}
execute as @a[scores={jingle=-30}] at @s run summon minecraft:firework_rocket ~1 ~ ~2 {LifeTime:25,Tags:["celebrate"],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"small_ball",has_trail:1b,colors:[1048367],fade_colors:[16760333]}]}}}}
execute as @a[scores={jingle=-20}] at @s run summon minecraft:firework_rocket ~-2 ~ ~-2 {LifeTime:20,Tags:["celebrate"],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"burst",has_twinkle:1b,has_trail:1b,colors:[2228479],fade_colors:[16745190]}]}}}}
execute as @a[scores={jingle=-40}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5
execute as @a[scores={jingle=-37}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.629961
execute as @a[scores={jingle=-34}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.749154
execute as @a[scores={jingle=-31}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.594604
execute as @a[scores={jingle=-28}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.749154
execute as @a[scores={jingle=-25}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.890899
execute as @a[scores={jingle=-22}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.667420
execute as @a[scores={jingle=-19}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.840896
execute as @a[scores={jingle=-16}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.0
execute as @a[scores={jingle=-10}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5
execute as @a[scores={jingle=-9}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.629961
execute as @a[scores={jingle=-8}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.749154
execute as @a[scores={jingle=-7}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2.0
execute as @a[scores={jingle=-40}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.5
execute as @a[scores={jingle=-37}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.629961
execute as @a[scores={jingle=-34}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.749154
execute as @a[scores={jingle=-31}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.594604
execute as @a[scores={jingle=-28}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.749154
execute as @a[scores={jingle=-25}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.890899
execute as @a[scores={jingle=-22}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.667420
execute as @a[scores={jingle=-19}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.840896
execute as @a[scores={jingle=-16}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.0
execute as @a[scores={jingle=-10}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 0.5
execute as @a[scores={jingle=-9}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 0.629961
execute as @a[scores={jingle=-8}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 0.749154
execute as @a[scores={jingle=-7}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 2.0

#Incrementing %timer by 1 every tick, updates score of players (if game is running)
execute if score %game wins matches 1 run scoreboard players add %timer wins 1
execute if score %timer wins matches 20 run scoreboard players set %timer wins 0
execute if score %game wins matches 1 if score %timer wins matches 0 positioned 0.5 64 0.5 run scoreboard players add @a[distance=..9.2,tag=inGame] score 1
execute if score %game wins matches 1 if score %timer wins matches 0 positioned 0.5 64 0.5 run scoreboard players add @a[distance=..3.2,tag=inGame] score 1

#Removes 1 from %countdown every tick if its greater than 0 (it's counting down), resets damage detectors and updates lastSprtint
execute if score %countdown wins matches 0.. run scoreboard players remove %countdown wins 1
scoreboard players reset * damage
scoreboard players reset * blocked
execute as @a store success score @s last_sprint if predicate kbw:not_sprinting
execute as @a[scores={jingle=1..}] run scoreboard players remove @s jingle 1
execute as @a[scores={jingle=..-1}] run scoreboard players add @s jingle 1