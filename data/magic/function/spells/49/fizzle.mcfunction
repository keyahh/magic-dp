scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
execute as @e[distance=..1,type=block_display,tag=tetherRope,predicate=magic:match_spell] run function magic:spells/49/remove_rope
kill @s