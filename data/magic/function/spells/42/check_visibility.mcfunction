scoreboard players operation #magicSearch magic.id = @s magic.id

scoreboard players set #range magic.temp 64
execute facing entity @n[type=#magic:targets,tag=raptorTarget] feet run function magic:spells/42/line_of_sight

tag @e[type=#magic:targets,tag=raptorTarget] remove raptorTarget