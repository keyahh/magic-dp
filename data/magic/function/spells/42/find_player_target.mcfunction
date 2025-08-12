execute on passengers if entity @s[tag=raptorWolf] on owner run tag @s add thisPlayer
execute at @n[type=#magic:magic_user,predicate=magic:match_id] as @e[distance=..30,type=#magic:targets,predicate=!magic:match_id] run function magic:spells/42/mob_check_attacker
execute on passengers if entity @s[tag=raptorWolf] on owner run tag @s remove thisPlayer

execute if entity @e[type=#magic:targets,tag=raptorTarget] run function magic:spells/42/check_visibility