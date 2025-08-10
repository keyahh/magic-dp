#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/42/end_dive

#entity collision
scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.uuid = @s magic.targetUUID
execute if entity @s[tag=!inAtk] if entity @e[distance=..6.5,type=#magic:targets,predicate=!magic:match_id,predicate=magic:match_uuid] run function magic:spells/42/start_attack

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/42/slowcast