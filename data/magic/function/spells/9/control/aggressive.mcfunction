scoreboard players operation #magicSearch magic.chainID = @s magic.chainID
scoreboard players operation #magicSearch magic.id = @s magic.id

execute positioned ^ ^0.01 ^4 summon marker run function magic:spells/9/control/summon_target

#execute as @n[type=marker,distance=..10,tag=chainTarget,predicate=magic:match_chain] at @s run function magic:spells/9/control/set_target

tp @s ^ ^ ^0.75 facing entity @n[type=marker,distance=..10,tag=chainTarget,predicate=magic:match_chain] eyes

kill @e[type=marker,tag=chainTarget,predicate=magic:match_chain]