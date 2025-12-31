scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players operation #magicSearch magic.uuid = @s magic.uuid

execute unless entity @n[distance=..6,type=#magic:targets,tag=tethered,predicate=magic:match_uuid] run function magic:spells/49/remove_rope

rotate @s facing entity @n[distance=..6,type=#magic:targets,tag=tethered,predicate=magic:match_uuid] feet
execute as @n[distance=..6,type=#magic:targets,tag=tethered,predicate=magic:match_uuid] run function magic:spells/49/target_pos
function magic:spells/49/find_distance
function magic:spells/49/stretch with storage magic:temp