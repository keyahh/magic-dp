scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @e[type=item_display,tag=earthWorm,predicate=magic:match_id] at @s run function magic:spells/40/remove_stack
kill @e[type=marker,tag=wormLead,predicate=magic:match_id]