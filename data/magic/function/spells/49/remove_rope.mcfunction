scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players operation #magicSearch magic.uuid = @s magic.uuid
tag @n[type=#magic:targets,tag=tethered,predicate=magic:match_uuid] remove tethered
scoreboard players remove @n[distance=..1,type=marker,tag=tetherProj,predicate=magic:match_spell] magic.temp 1
kill @s