scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players operation #magicSearch magic.id = @s magic.id

particle cloud ~ ~1.5 ~ 1 1 1 0.01 20
tp @e[type=bat,tag=batSwarm,predicate=magic:match_spell] 0 -64 0
kill @e[type=bat,tag=batSwarm,predicate=magic:match_spell]
kill @e[type=marker,tag=batSwarm,predicate=magic:match_spell]