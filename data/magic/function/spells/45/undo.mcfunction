scoreboard players reset @s magic.rendTime
data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
tp @s ^ ^ ^-3
schedule function magic:spells/45/loop 1t append