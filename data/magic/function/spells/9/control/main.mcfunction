scoreboard players operation #magicSearch magic.chainID = @s magic.chainID
scoreboard players operation #magicSearch magic.id = @s magic.id

scoreboard players add @s magic.temp 1

execute at @n[type=marker,tag=manaChainLead,predicate=magic:match_chain] as @n[type=item_display,tag=manaChainHead,predicate=magic:match_chain] run function magic:spells/9/control/ik
#execute as @n[type=item_display,tag=manaChainHead,predicate=magic:match_chain] at @s run function magic:spells/9/control/ik

execute unless entity @s[tag=grabber] run function magic:spells/9/control/attacker
execute if entity @s[tag=grabber] run function magic:spells/9/control/grabber

execute if entity @s[tag=inBezier] run function magic:spells/9/control/in_bezier

execute if score @s magic.temp matches 140.. unless entity @s[tag=retract] run tag @s add retract

execute if entity @s[tag=retract] run function magic:spells/9/retract/retract

schedule function magic:spells/9/control/loop 1t append