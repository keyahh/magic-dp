scoreboard players add @s magic.temp 1
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players operation #magicSearch magic.id = @s magic.id

execute if score @s magic.temp matches 25 run function magic:spells/13/cloud/ring

execute if score @s magic.temp matches 66 run data merge entity @s {interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.2475f,0f,0.2475f],scale:[0.01f,200f,0.01f]}}

execute if score @s magic.temp matches 5..66 as @n[type=block_display,tag=redBeam,distance=..2,predicate=magic:match_spell] at @s run function magic:spells/13/beam/red_transform
execute if score @s magic.temp matches 66 as @n[type=block_display,tag=redBeam,distance=..2,predicate=magic:match_spell] at @s run data merge entity @s {interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-1f,1f],translation:[-0.45f,0f,-0.45f],scale:[-0.15f,-200f,-0.15f]}}

execute if score @s magic.temp matches 60 as @e[type=item_display,tag=crownBoltSeg,predicate=magic:match_spell] run data merge entity @s {interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.01f,0.01f,1f]}}

execute if score @s magic.temp matches 120.. run function magic:spells/13/beam/remove

schedule function magic:spells/13/loop 1t append