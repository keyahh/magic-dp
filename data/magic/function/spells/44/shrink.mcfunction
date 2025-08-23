execute store result score #scaleX magic.temp run data get entity @s transformation.scale[0] 100
execute store result score #scaleY magic.temp run data get entity @s transformation.scale[1] 100

scoreboard players remove #scaleX magic.temp 100
scoreboard players remove #scaleY magic.temp 100

execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get #scaleX magic.temp
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get #scaleY magic.temp