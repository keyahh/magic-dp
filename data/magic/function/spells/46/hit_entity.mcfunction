scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer

execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[distance=..12,type=#magic:flesh_target,predicate=!magic:match_id,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s magic.iframe matches 1.. positioned as @s run function magic:spells/46/damage

tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer

function magic:spells/46/fizzle
scoreboard players reset #magicRange slowcast.itt