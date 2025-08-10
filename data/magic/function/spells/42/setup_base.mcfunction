data merge entity @s {CustomNameVisible:0b,CustomName:"Raptor",Health:50f,DeathLootTable:"empty",NoGravity:1b,Silent:1b,Tags:["magic","conjuration","raptorBase","newRaptorBase"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:50},{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:0},{id:"minecraft:attack_speed",base:0},{id:"minecraft:follow_range",base:0}],equipment:{mainhand:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"magic:mobs/raptor_base":1}}}},drop_chances:{mainhand:0.000}}

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s magic.atkCD 40
summon wolf ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["raptorWolf","newRaptorWolf"],active_effects:[{id:"minecraft:resistance",amplifier:5,duration:-1,show_particles:0b},{id:"minecraft:invisibility",amplifier:5,duration:-1,show_particles:0b}]}
data modify entity @n[type=wolf,tag=newRaptorWolf] Owner set from entity @n[type=#magic:magic_user,tag=thisPlayer] UUID
ride @n[type=wolf,tag=newRaptorWolf] mount @s
execute on passengers if entity @s[tag=newRaptorWolf] run scoreboard players operation @s magic.id = #magicSearch magic.id
execute on passengers if entity @s[tag=newRaptorWolf] run tag @s remove newRaptorWolf