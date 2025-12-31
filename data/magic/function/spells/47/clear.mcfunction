#run as eq anchor
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
kill @e[type=block_display,tag=eqGround,predicate=magic:match_spell]
kill @s