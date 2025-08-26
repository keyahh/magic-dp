data merge entity @s {interpolation_duration:1,start_interpolation:-1}
execute if score @s slowcast.maxDist matches 8..9 run function magic:spells/44/shrink

execute store result entity @s transformation.scale[2] float 1 run scoreboard players get @s slowcast.dist

scoreboard players operation #pierceOffset magic.temp = @s slowcast.dist
scoreboard players operation #pierceOffset magic.temp *= #10 const
scoreboard players operation #pierceOffset magic.temp /= #2 const

execute store result entity @s transformation.translation[2] float 0.1 run scoreboard players get #pierceOffset magic.temp

scoreboard players operation @s slowcast.dist += #6 const