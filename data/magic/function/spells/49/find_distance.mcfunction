execute store result score #x math run data get entity @s Pos[0] 1000
scoreboard players operation #x math -= #dx math
execute store result storage magic:temp x float 0.001 run scoreboard players get #x math

execute store result score #y math run data get entity @s Pos[1] 1000
scoreboard players operation #y math -= #dy math
execute store result storage magic:temp y float 0.001 run scoreboard players get #y math

execute store result score #z math run data get entity @s Pos[2] 1000
scoreboard players operation #z math -= #dz math
execute store result storage magic:temp z float 0.001 run scoreboard players get #z math

function magic:spells/49/transform with storage magic:temp