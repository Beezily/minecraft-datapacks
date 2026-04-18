# Starts the game (this should only be called from main function)

#Clears inventory, effects, traps, and fireballs, scythes, adventure mode
clear @a[scores={queue=1}]
effect clear @a[scores={queue=1}]
kill @e[tag=archerTrap]
kill @e[tag=pyroFireball]
kill @e[tag=reapScythe]
gamemode adventure @a[scores={queue=1}]

# Kit Items
#Default
give @a[team=,scores={queue=1}] minecraft:stick[custom_name={text:"Knockback Stick",color:"white",italic:false},lore=[{text:"The original."}],enchantments={knockback:4}] 1
give @a[team=,scores={queue=1}] minecraft:bow[custom_name={text:"Annoying Bow",color:"white",italic:false},lore=[{text:"A rather simple bow."}],unbreakable={},enchantments={punch:1,infinity:1},tooltip_display={hidden_components:["unbreakable"]}] 1
give @a[team=,scores={queue=1}] minecraft:arrow 1

#Archer
give @a[team=Archer,scores={queue=1}] minecraft:bow[custom_name={text:"Heavy Bow",color:"aqua",italic:false},lore=[{text:"A bow that shoots"},{text:"with unparalleled strength."}],unbreakable={},enchantments={punch:3,piercing:2,infinity:1,knockback:1},tooltip_display={hidden_components:["unbreakable"]}] 1
give @a[team=Archer,scores={queue=1}] minecraft:crossbow[enchantments={"punch":3,"infinity":1,"multishot":1},custom_name={"color":"aqua","italic":false,"text":"Trusty Sidearm"},unbreakable={},lore=["A handy quickshot that becomes"," your best partner in a pinch."],tooltip_display={hidden_components:["unbreakable"]}] 1
give @a[team=Archer,scores={queue=1}] minecraft:turtle_spawn_egg[can_place_on=[{blocks:["minecraft:glowstone","minecraft:white_wool","minecraft:lime_wool","minecraft:sand","minecraft:red_terracotta"]}],tooltip_display={hidden_components:["can_place_on"]},custom_name={text:"Hunting Trap",color:"aqua",italic:false},lore=[{text:"Roots your opponents"},{text:"for a short time."}],entity_data={id:"minecraft:turtle",Invulnerable:1b,CustomNameVisible:0b,Age:-2147483647,Tags:["archerTrap"]}] 4
give @a[team=Archer,scores={queue=1}] minecraft:splash_potion[custom_name={text:"Wind's Blessing",color:"aqua",italic:false},lore=[{text:"A magical essence that"},{text:"allows you to nimbly"},{text:"outmaneuver your opponents."}],potion_contents={custom_effects:[{id:"minecraft:speed",amplifier:2b,duration:180}],custom_color:2293580}] 3
give @a[team=Archer,scores={queue=1}] minecraft:arrow[custom_name={text:"Arrow",color:"aqua",italic:false}] 1

#Knight
give @a[team=Knight,scores={queue=1}] minecraft:wooden_sword[custom_name={text:"The Stik",color:"dark_red",italic:false},lore=[{text:"A legendary rod which"},{text:"hits with great force."}],unbreakable={},enchantments={knockback:10},attribute_modifiers=[{id:"kbw:stik_speed",type:"minecraft:movement_speed",amount:-0.15,operation:"add_multiplied_base",slot:"mainhand"}],tooltip_display={hidden_components:["unbreakable"]}] 1

#Assassin
give @a[scores={queue=1},team=Assassin] minecraft:stick[custom_name={text:"Dagger",color:"yellow",italic:false},lore=[{text:"It seems pretty good"},{text:"for stabbing people."}],enchantments={knockback:2}] 1
give @a[scores={queue=1},team=Assassin] minecraft:splash_potion[custom_name={text:"Smoke Bomb",color:"yellow",italic:false},lore=[{text:"Blindness III (0:06)",color:"red",italic:false},{text:"Leaves your opponents in",color:"dark_purple",italic:true},{text:"a murky cloud of smoke.",color:"dark_purple",italic:true}],potion_contents={custom_effects:[{id:"minecraft:nausea",amplifier:2b,duration:180},{id:"minecraft:blindness",amplifier:2b,duration:120,show_particles:1b}],custom_color:0},tooltip_display={hidden_components:["potion_contents"]}] 2
give @a[scores={queue=1},team=Assassin] minecraft:ender_pearl[custom_name={text:"Ender Pearl",color:"yellow",italic:false}] 6
give @a[scores={queue=1},team=Assassin] minecraft:splash_potion[custom_name={text:"Cloak of Shadows",color:"yellow",italic:false},lore=[{text:"Jump Boost X (0:10)",color:"blue",italic:false},{text:"Invisibility (0:10)",color:"blue",italic:false},{text:"A brew that helps you",color:"dark_purple",italic:true},{text:"evade attacks unnoticed.",color:"dark_purple",italic:true}],potion_contents={custom_effects:[{id:"minecraft:jump_boost",amplifier:9b,duration:200,show_particles:0b},{id:"minecraft:invisibility",amplifier:0b,duration:200,show_particles:0b}],custom_color:2293580},tooltip_display={hidden_components:["potion_contents"]}] 2

#Witch
give @a[scores={queue=1},team=Witch] minecraft:stick[custom_name={text:"Magic Wand",color:"dark_purple",italic:false},lore=[{text:"It leaves behind"},{text:"a sparkly trail."}],enchantments={knockback:2},custom_data={wand:1b}] 1
give @a[scores={queue=1},team=Witch] minecraft:splash_potion[custom_name={text:"Potion of Nausea",color:"dark_purple",italic:false},lore=[{text:"What is this disgusting"},{text:"liquid? It can't be healthy."}],potion_contents={custom_effects:[{id:"minecraft:nausea",amplifier:0b,duration:400}],custom_color:5578058}] 2
give @a[scores={queue=1},team=Witch] minecraft:splash_potion[custom_name={text:"Potion of Slowness",color:"dark_purple",italic:false},lore=[{text:"Drains your limbs"},{text:"of all vigor."}],potion_contents={custom_effects:[{id:"minecraft:slowness",amplifier:1b,duration:600}],custom_color:5926017}] 2
give @a[scores={queue=1},team=Witch] minecraft:splash_potion[custom_name={text:"Potion of Speed",color:"dark_purple",italic:false},lore=[{text:"Charges your legs with"},{text:"a magical energy."}],potion_contents={custom_effects:[{id:"minecraft:speed",amplifier:2b,duration:300}],custom_color:8171462}] 1
give @a[scores={queue=1},team=Witch] minecraft:splash_potion[custom_name={text:"Potion of Fear",color:"dark_purple",italic:false},lore=[{text:"A strange potion that"},{text:"forces you to shake with"},{text:"a phantom dread."}],potion_contents={custom_effects:[{id:"minecraft:poison",amplifier:0b,duration:2000}],custom_color:5797459}] 1
give @a[scores={queue=1},team=Witch] minecraft:milk_bucket[custom_name={text:"Magic Milk",color:"dark_purple",italic:false},lore=[{text:"Milk milked from a magic"},{text:"cow. This strange liquid"},{text:"flows endlessly."}],consumable={consume_seconds:0.1}] 1

#Pyromaniac
give @a[team=Pyromaniac,scores={queue=1}] minecraft:golden_sword[custom_name={text:"Meteor Blade",color:"gold",italic:false},lore=[{text:"A glowing blade forged from a"},{text:"thousand meteors. You can feel its"},{text:"crushing gravity as you hold it."}],unbreakable={},enchantments={knockback:3,fire_aspect:1},tooltip_display={hidden_components:["unbreakable"]},attribute_modifiers=[{id:"gravity",type:"gravity",amount:0.2,operation:"add_multiplied_base",slot:"mainhand"}],custom_data={pyroSlam:1b}] 1
give @a[team=Pyromaniac,scores={queue=1}] minecraft:carrot_on_a_stick[custom_name={text:"Fiery Flail",color:"gold",italic:false},lore=[{text:"It's like a bow..."},{text:"but more explosive."}],unbreakable={},enchantments={fire_aspect:4,knockback:1},tooltip_display={hidden_components:["unbreakable"]},use_cooldown={seconds:2}] 1

#Ghost
give @a[scores={queue=1},team=Ghost] minecraft:ender_eye[custom_name={text:"Ghostly Presence",color:"gray",italic:false},lore=[{text:"Enter the realm of spirits"},{text:"and drift around freely."}],enchantment_glint_override=true,attribute_modifiers=[{id:"kbw:ghost_presence_speed",type:"minecraft:movement_speed",amount:0.5d,operation:"add_multiplied_total",slot:"mainhand"},{id:"kbw:ghost_presence_kbr",type:"minecraft:knockback_resistance",amount:-1.0d,operation:"add_value",slot:"mainhand"},{id:"kbw:ghost_presence_ad",type:"minecraft:attack_damage",amount:-1.0d,operation:"add_value",slot:"mainhand"}]] 1
give @a[scores={queue=1},team=Ghost] minecraft:carved_pumpkin[custom_name={text:"Scary Face",color:"gray",italic:false},lore=[{text:"Hold your ground and"},{text:"make your opponents"},{text:"jump with fright!"}],enchantments={knockback:4,piercing:10,sharpness:5},attribute_modifiers=[{id:"kbw:scaryface_mainhand_slow",type:"minecraft:movement_speed",amount:-2.0d,operation:"add_multiplied_total",slot:"any"}],piercing_weapon={deals_knockback:true,hit_sound:"entity.rabbit.attack",sound:"entity.armadillo.brush"},swing_animation={duration:10,type:"stab"},attack_range={min_reach:0.0,max_reach:3.0,min_creative_reach:0.0,max_creative_reach:5.0,hitbox_margin:0.5},custom_data={ghost:1b}] 1
#give @a[scores={queue=1},team=Ghost] minecraft:blaze_powder[custom_name={text:"Cursed Flames",color:"gray",italic:false},lore=[{text:"Spirit fire seems to"},{text:"burn the living, too."}],enchantments={knockback:1,fire_aspect:1},attribute_modifiers=[{id:"kbw:cursedflames_speed",type:"minecraft:movement_speed",amount:0.3d,operation:"add_multiplied_total",slot:"mainhand"}]] 1

#Reaper
give @a[scores={queue=1},team=Reaper] minecraft:netherite_hoe[custom_name={text:"Soul Reaper",color:"black",italic:false},lore=[{text:"This mysterious scythe has"},{text:"strange powers. Not even you"},{text:"have complete mastery of it. "}],unbreakable={},enchantments={knockback:2},custom_data={scythe:2b},tooltip_display={hidden_components:["unbreakable","attribute_modifiers"]}] 1
give @a[scores={queue=1},team=Reaper] minecraft:wooden_hoe[custom_name={text:"Farmer's Scythe",color:"black",italic:false},lore=[{text:"Knockback 0","color":gray,"italic":false},{text:"This light stick isn't very good at"},{text:"stealing souls. You should probably"},{text:"get your weapon back."}],unbreakable={},enchantment_glint_override=true,custom_data={scythe:1b},tooltip_display={hidden_components:["unbreakable"]},attribute_modifiers=[{id:"movement_speed",type:"movement_speed",amount:0.1,operation:"add_multiplied_base",slot:"mainhand"}]] 1

#Duelist
give @a[scores={queue=1},team=Duelist] minecraft:iron_axe[custom_name={text:"Iron Axe",color:"red",italic:false},lore=[{text:"All you need to survive"},{text:"is your trusty iron axe"}],unbreakable={},damage=0,enchantments={knockback:3},custom_data={duelist:1b},tooltip_display={hidden_components:["unbreakable","attribute_modifiers"]}] 1
item replace entity @a[scores={queue=1},team=Duelist] armor.head with minecraft:iron_helmet[custom_name={text:"Iron Helmet",color:"red",italic:false},lore=[{text:"Although this armor doesn't"},{text:"protect you from knockback,"},{text:"at least it's pretty shiny"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 1
item replace entity @a[scores={queue=1},team=Duelist] armor.chest with minecraft:iron_chestplate[custom_name={text:"Iron Chestplate",color:"red",italic:false},lore=[{text:"Although this armor doesn't"},{text:"protect you from knockback,"},{text:"at least it's pretty shiny"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 1
item replace entity @a[scores={queue=1},team=Duelist] armor.legs with minecraft:iron_leggings[custom_name={text:"Iron Leggings",color:"red",italic:false},lore=[{text:"Although this armor doesn't"},{text:"protect you from knockback,"},{text:"at least it's pretty shiny"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 1
item replace entity @a[scores={queue=1},team=Duelist] armor.feet with minecraft:iron_boots[custom_name={text:"Iron Boots",color:"red",italic:false},lore=[{text:"Although this armor doesn't"},{text:"protect you from knockback,"},{text:"at least it's pretty shiny"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 1

#Builder
give @a[scores={queue=1},team=Builder] minecraft:tube_coral_block[can_place_on=[{blocks:["minecraft:red_terracotta","minecraft:glowstone","minecraft:white_wool","minecraft:lime_wool","minecraft:sand","minecraft:tube_coral_block"]}],custom_name={text:"Building Block",color:"blue",italic:false},lore=[{text:"These blocks don't last forever..."},{text:"Luckily you've got tons more"}],custom_data={builder:1b},enchantments={knockback:2},tooltip_display={hidden_components:["can_place_on"]}] 8
give @a[scores={queue=1},team=Builder] minecraft:diamond_pickaxe[can_break=[{blocks:["minecraft:tube_coral_block"]}],custom_name={text:"Diamond Pickaxe",color:"blue",italic:false},unbreakable={},tooltip_display={hidden_components:["can_break","unbreakable","attribute_modifiers"]}] 1

#All players given The Stik except Knight
item replace entity @a[scores={queue=1},team=!Knight] hotbar.8 with minecraft:wooden_sword[custom_name={text:"The Stik",color:"red",italic:false},lore=[{text:"This hefty rod is"},{text:"really hard to wield."}],damage=58,enchantments={knockback:10},attribute_modifiers=[{id:"kbw:stik_heavy_speed",type:"minecraft:movement_speed",amount:-1.0d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

#Tagging inGame; untagging noScythe; reset all players score and queue; set @a calculation 0
tag @a[scores={queue=1}] add inGame
tag @a[tag=noScythe] remove noScythe
scoreboard players reset * score
scoreboard players reset * queue
scoreboard players set @a calculation 0

#Attribute Modifiers
execute as @a run attribute @s minecraft:attack_speed base set 100
execute as @a run attribute @s minecraft:knockback_resistance base set 0
execute as @a run attribute @s minecraft:attack_knockback base set 0
execute as @a run attribute @s minecraft:jump_strength base set 0.42
execute as @a run attribute @s minecraft:gravity base set 0.08

#Reveal score on sidebar
scoreboard objectives setdisplay sidebar score

#Teleportating all inGame players into arena
spreadplayers 0 0 0 11 false @a[tag=inGame]

# %game set to true
scoreboard players set %game wins 1