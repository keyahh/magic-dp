scoreboard players operation #magicSearch magic.id = @s magic.id

execute as @e[type=#magic:proj_spell,tag=conjuration,predicate=!magic:match_id,distance=..5.5] at @s run function magic:spells/36/banish