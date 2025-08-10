scoreboard players operation #magicSearch magic.id = @s magic.id

execute on attacker run tag @s add raptorTarget
execute as @n[type=#magic:magic_user,predicate=magic:match_id] on attacker run tag @s add raptorTarget
execute on passengers if entity @s[tag=raptorWolf] on target run tag @s add raptorTarget

execute if entity @e[type=#magic:targets,tag=raptorTarget] run function magic:spells/42/check_visibility