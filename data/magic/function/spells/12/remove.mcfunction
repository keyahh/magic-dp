scoreboard players operation #magicSearch magic.batID = @s magic.batID
scoreboard players operation #magicSearch magic.id = @s magic.id

tp @e[type=bat,tag=batSwarm,predicate=magic:match_bat] 0 -64 0
kill @e[tag=batSwarm,predicate=magic:match_bat]

execute as @p[predicate=magic:match_id] at @s run function magic:spells/12/check_exist