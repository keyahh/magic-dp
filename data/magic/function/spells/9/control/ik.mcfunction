execute facing entity @s feet run tp @s ^ ^ ^0.45 facing ^ ^ ^-1
execute if entity @s[tag=chainBase] positioned as @n[type=marker,tag=manaChainAnchor,predicate=magic:match_chain] run tp @s ~ ~ ~
execute at @s on passengers on origin run function magic:spells/9/control/ik
execute on passengers on origin at @s on passengers on passengers on origin run tp @s ^ ^ ^0.45