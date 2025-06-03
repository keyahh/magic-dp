tag @s add magic
tag @s add cloud
tag @s add crown
tag @s add newCloud

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #magicSearch magic.spellID

tp @s ~ ~ ~ facing entity @n[type=block_display,tag=crownAnchor] feet

execute store result score #rng magic.temp run random value 2..4

execute if score #rng magic.temp matches 1..2 run data merge entity @s {teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:shroomlight"}}
execute if score #rng magic.temp matches 3 run data merge entity @s {teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:orange_concrete"}}
execute if score #rng magic.temp matches 4 run data merge entity @s {teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:orange_stained_glass"}}

scoreboard players operation @s magic.cloud = #rng magic.temp
execute if score @s magic.cloud matches 1..3 run scoreboard players set @s magic.cloud 3

execute store result entity @s transformation.right_rotation[0] float 0.01 run random value -100..100
execute store result entity @s transformation.right_rotation[1] float 0.01 run random value -100..100

schedule function magic:spells/13/cloud/delay 2t append