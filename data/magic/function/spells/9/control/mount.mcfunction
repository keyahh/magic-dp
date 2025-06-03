ride @s mount @n[type=item_display,tag=thisHead,distance=..5]
execute as @n[type=item_display,tag=thisHead,distance=..5] run scoreboard players operation #magicSearch magic.chainID = @s magic.chainID

tag @n[type=marker,tag=manaChainAnchor,predicate=magic:match_chain,distance=..24] add retract