effect give @s invisibility infinite 0 true
effect give @s resistance infinite 1 true

scoreboard players operation #magicSearch magic.id = @s magic.id

execute if entity @s[tag=phase1] run function magic:mobs/hunter/phase1

#walking
execute if entity @p[distance=..2.5] unless items entity @s weapon.mainhand bow run item replace entity @s weapon.mainhand with bow[item_model="air",enchantments={"magic:mobs/hunter_base":1}] 1
execute unless entity @p[distance=..2.5] unless items entity @s weapon.mainhand stick run item replace entity @s weapon.mainhand with stick[item_model="air",enchantments={"magic:mobs/hunter_base":1}] 1

execute unless entity @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id,distance=..0.01] unless entity @s[tag=stop] run tag @s add moving

execute if entity @s[tag=moving] run function magic:mobs/hunter/walk/walk_main

tp @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id] ~ ~ ~ ~ 0