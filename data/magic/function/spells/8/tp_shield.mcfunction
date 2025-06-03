scoreboard players operation #magicSearch magic.id = @s magic.id

tp @n[type=item_display,tag=shieldAnchor,predicate=magic:match_id] ~ ~-2 ~ facing entity @s
tp @n[type=item_display,tag=shieldDisplay,predicate=magic:match_id] ~ ~-1 ~ ~ ~
execute as @n[type=item_display,tag=shieldAnchor,predicate=magic:match_id] at @s run function magic:spells/8/tp_edges

scoreboard players reset #magicRange magic.temp