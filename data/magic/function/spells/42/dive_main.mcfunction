#timer
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/42/end_dive

#slowcast
scoreboard players operation #magicSearch magic.uuid = @s magic.targetUUID

scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
rotate @s facing entity @n[type=#magic:targets,predicate=magic:match_uuid] feet
execute facing entity @n[type=#magic:targets,predicate=magic:match_uuid] feet run return run function magic:spells/42/slowcast
function magic:spells/42/slowcast