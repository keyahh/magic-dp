effect give @s invisibility infinite 0 true
effect give @s resistance infinite 1 true

scoreboard players operation #magicSearch magic.id = @s magic.id

execute if entity @s[tag=phase1] run function magic:mobs/lich/phase1
execute if entity @s[tag=phase2] run function magic:mobs/lich/phase2

#walking
execute unless entity @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id,distance=..0.01] unless entity @s[tag=stop] run tag @s add moving

execute if entity @s[tag=moving] run function magic:mobs/lich/walk/walk_main

tp @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] ~ ~ ~ ~ 0