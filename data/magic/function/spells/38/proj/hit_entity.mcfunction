scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] unless score @s magic.iframe matches 1.. run damage @s 25 player_attack by @n[type=#magic:magic_user,tag=thisPlayer]
tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer

scoreboard players set @s magic.atkCD 15