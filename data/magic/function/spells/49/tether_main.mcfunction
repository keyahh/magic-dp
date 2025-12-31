scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

#magic.temp = rope count

execute unless score @s magic.temp matches 4.. if entity @e[distance=..4,type=#magic:targets,tag=!conjuration,tag=!tethered,predicate=!magic:match_id] summon block_display run function magic:spells/49/setup_rope

execute as @e[distance=..1,type=block_display,tag=tetherRope,predicate=magic:match_spell] at @s run function magic:spells/49/rope_main