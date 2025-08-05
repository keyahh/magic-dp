scoreboard players operation #magicSearch magic.id = @s magic.id

execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..5,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s magic.iframe matches 1.. run damage @s 9 magic:ignore_cooldown by @n[type=#magic:magic_user,predicate=magic:match_id]

scoreboard players reset @s #magicRange slowcast.itt
function magic:spells/41/fizzle