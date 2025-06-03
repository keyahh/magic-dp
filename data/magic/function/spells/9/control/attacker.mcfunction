scoreboard players operation #magicSearch magic.chainID = @s magic.chainID
scoreboard players operation #magicSearch magic.id = @s magic.id

tag @n[type=#magic:magic_user,predicate=magic:match_id] add chainOwner
execute at @e[type=item_display,tag=manaChain,predicate=magic:match_chain] positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run damage @s 10 player_attack by @n[type=#magic:magic_user,tag=chainOwner]
tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=chainOwner] remove chainOwner

execute if entity @s[tag=!inBezier] if entity @e[type=#magic:targets,distance=..16,predicate=!magic:match_id] as @n[type=marker,tag=manaChainLead,predicate=magic:match_chain] at @s run function magic:spells/9/control/aggressive

execute if entity @s[tag=!inBezier,tag=!retract] unless entity @e[type=#magic:targets,distance=..12,predicate=!magic:match_id] run tag @s add retract
