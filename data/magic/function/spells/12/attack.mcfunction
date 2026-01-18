scoreboard players reset @s magic.temp
scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute as @e[distance=..3.5,type=#magic:targets,predicate=!magic:match_id] unless score @s magic.iframe matches 1.. run function magic:spells/12/damage
tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer