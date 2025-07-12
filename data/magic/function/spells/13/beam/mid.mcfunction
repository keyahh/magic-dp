scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

data merge entity @s {interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.2475f,0f,0.2475f],scale:[0.01f,200f,0.01f]}}

execute as @n[type=block_display,tag=redBeam,distance=..2,predicate=magic:match_spell] at @s run data merge entity @s {interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-1f,1f],translation:[-0.45f,0f,-0.45f],scale:[-0.15f,-200f,-0.15f]}}