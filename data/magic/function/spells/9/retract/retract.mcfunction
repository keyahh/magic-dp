#run as manaChainAnchor
scoreboard players operation #magicSearch magic.chainID = @s magic.chainID

execute as @n[type=item_display,tag=chainBase,predicate=magic:match_chain,distance=..5] at @s run return run function magic:spells/9/retract/remove_cur_base

kill @e[predicate=magic:match_chain,distance=..20]