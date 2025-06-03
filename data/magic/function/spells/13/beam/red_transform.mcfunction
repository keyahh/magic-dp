scoreboard players add @s magic.temp 1

execute if score @s magic.temp matches 1 run return run data merge entity @s {interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-1f,1f],translation:[0.125f,0f,0.125f],scale:[-1.25f,-200f,-1.25f]}}

execute if score @s magic.temp matches 6 run return run data merge entity @s {interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-1f,1f],translation:[0f,0f,0f],scale:[-1f,-200f,-1f]}}

execute if score @s magic.temp matches 11.. run scoreboard players reset @s magic.temp