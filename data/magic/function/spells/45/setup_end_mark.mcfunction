scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = @n[type=marker,tag=rendStartMark,predicate=magic:match_id] magic.spellID

tag @s add magic
tag @s add rendMark
tag @s add rendEndMark

scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
execute positioned ~ ~ ~ if entity @n[distance=..3,type=marker,tag=rendStartMark,predicate=magic:match_spell] run return run function magic:spells/45/clear

execute as @n[type=marker,tag=rendStartMark,predicate=magic:match_spell] at @s run function magic:spells/45/summon