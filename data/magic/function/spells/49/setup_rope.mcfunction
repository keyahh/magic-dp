scoreboard players add @n[distance=..1,type=marker,predicate=magic:match_spell] magic.temp 1
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #magicSearch magic.spellID

data merge entity @s {Tags:["tetherRope"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,1f]},block_state:{Name:"minecraft:black_concrete"},interpolation_duration:1}

execute as @n[distance=..4,type=#magic:targets,tag=!conjuration,tag=!tethered,predicate=!magic:match_id] run function magic:spells/49/mark_tethered

scoreboard players operation @s magic.uuid = #magicSearch magic.uuid