scoreboard players operation #magicSearch magic.id = @s magic.id

execute on passengers if entity @s[tag=ghostKnightWolf] on owner at @s as @e[distance=..30,type=#magic:targets,predicate=!magic:match_id] unless score @s magic.uuid matches 0.. store result score @s magic.uuid run data get entity @s UUID[0]
execute on passengers if entity @s[tag=ghostKnightWolf] store result score #magicSearch magic.uuid run data get entity @s angry_at[0]
rotate @s facing entity @n[type=#magic:targets,predicate=magic:match_uuid] eyes

#execute unless entity @e[distance=..3.5,type=#magic:targets,predicate=magic:match_uuid] run function magic:spells/48/move/approach_target

execute if entity @e[distance=..3.5,type=#magic:targets,predicate=magic:match_uuid] run function magic:spells/48/atk/atk