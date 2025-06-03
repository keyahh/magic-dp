scoreboard players add @s magic.temp 1
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players operation #magicSearch magic.id = @s magic.id

execute if score @s magic.temp matches 1 run data merge entity @s {interpolation_duration:7,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0375f,0f,0.0375f],scale:[0.1f,200f,0.1f]}}
execute if score @s magic.temp matches 1 as @n[type=block_display,tag=thinRedBeam,predicate=magic:match_spell,distance=..2] at @s run data merge entity @s {interpolation_duration:7,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-1f,1f],translation:[-0.0375f,0f,-0.0375f],scale:[0.2f,200f,0.2f]}}

execute if score @s magic.temp matches 8 run data merge entity @s {interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.2475f,0f,0.2475f],scale:[0.01f,200f,0.01f]}}
execute if score @s magic.temp matches 8 as @n[type=block_display,tag=thinRedBeam,predicate=magic:match_spell,distance=..2] at @s run data merge entity @s {interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.0375f,0f,-0.0375f],scale:[-0.1f,-200f,-0.1f]}}

execute if score @s magic.temp matches 12 positioned ~ ~0.2 ~ run function magic:spells/13/cloud/ring

execute if score @s magic.temp matches 13.. run function magic:spells/13/flicker/end_flicker

schedule function magic:spells/13/flicker/loop 1t append