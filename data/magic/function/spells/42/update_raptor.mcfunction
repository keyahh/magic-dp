scoreboard players reset @s magic.temp
scoreboard players operation #magicSearch magic.id = @s magic.id

#new direction
tag @s remove left
tag @s remove right

execute store result score #rng magic.temp run random value 0..4
execute if score #rng magic.temp matches 1..2 run tag @s add left
execute if score #rng magic.temp matches 3..4 run tag @s add right
execute unless entity @n[type=#magic:magic_user,predicate=magic:match_id,distance=..30] run function magic:spells/42/remove_direction

#owner
execute if entity @s[tag=!inDive,tag=!inRise] at @n[type=#magic:magic_user,predicate=magic:match_id] positioned over world_surface positioned ~ ~12 ~ unless entity @s[distance=..20] positioned as @s facing entity @n[type=#magic:magic_user,predicate=magic:match_id] feet run rotate @s ~ 0
execute if entity @s[tag=!inDive,tag=!inRise] at @n[type=#magic:magic_user,predicate=magic:match_id] positioned over world_surface positioned ~ ~12 ~ unless entity @s[distance=..40] run tp @s ~ ~ ~

#targeting
execute on passengers if entity @s[tag=raptorWolf] on owner run tag @s add thisPlayer
execute unless score @s magic.atkCD matches 1.. at @n[type=#magic:magic_user,predicate=magic:match_id] as @e[distance=..30,type=#magic:targets,predicate=!magic:match_id] run function magic:spells/42/mob_check_attacker
execute on passengers if entity @s[tag=raptorWolf] on owner run tag @s remove thisPlayer

execute if entity @e[type=#magic:targets,tag=raptorTarget] run function magic:spells/42/check_visibility