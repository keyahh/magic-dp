scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players operation #magicSearch magic.uuid = @s magic.uuid

execute unless entity @n[distance=..6,type=#magic:targets,tag=tethered,predicate=magic:match_uuid] run function magic:spells/49/remove_rope

rotate @s facing entity @n[distance=..6,type=#magic:targets,tag=tethered,predicate=magic:match_uuid] eyes

scoreboard players set $strength player_motion.api.launch 15000
tag @s add thisRope
execute as @n[distance=4..6,type=#magic:targets,type=!player,tag=tethered,predicate=magic:match_uuid] at @s run function magic:spells/49/launch_nonplayer
execute as @p[distance=4..6,tag=tethered,predicate=magic:match_uuid] at @s facing entity @n[distance=..12,tag=thisRope,type=block_display] eyes run function player_motion:api/launch_looking
tag @s remove thisRope

execute as @n[distance=..6,type=#magic:targets,tag=tethered,predicate=magic:match_uuid] run function magic:spells/49/target_pos
function magic:spells/49/find_distance
function magic:spells/49/stretch with storage magic:temp