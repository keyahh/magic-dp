scoreboard players operation #magicSearch magic.id = @s magic.id

tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer

execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s magic.iframe matches 1.. run damage @s 20 minecraft:player_attack by @n[type=#magic:magic_user,tag=thisPlayer]
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=shulker,tag=shield,predicate=!magic:match_id,dx=0,dy=0,dz=0] run function magic:spells/28/fizzle


tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer
