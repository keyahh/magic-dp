tag @s add shieldDisplay
tag @s add magic
tag @s add shield
tag @s add magicSpell

scoreboard players operation @s magic.id = #magicSearch magic.id
data merge entity @s {shadow_radius:0f,teleport_duration:2,brightness:{sky:15,block:15},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"magic:magic_shield"}}}

#function animated_java:shield/animations/summon/play