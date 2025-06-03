execute as @n[type=item_display,tag=manaChainHead,predicate=magic:match_chain,distance=..24] at @s run function magic:spells/9/control/grabber_head

execute unless entity @s[tag=inBezier] run tag @s add retract