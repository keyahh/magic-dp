effect give @s invisibility infinite 0 true
effect give @s resistance infinite 1 true

scoreboard players operation #magicSearch magic.id = @s magic.id
execute if score @s magic.iframe matches 1.. run scoreboard players remove @s magic.iframe 1
rotate @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id] ~ 0
#tp @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id] ~ ~ ~ ~ 0

execute if entity @s[tag=phase1] run function magic:mobs/hunter/phase1

#walking
#execute if entity @p[distance=..2] unless items entity @s weapon.mainhand bow run item replace entity @s weapon.mainhand with bow[item_model="air",enchantments={"magic:mobs/hunter_base":1}] 1
#execute unless entity @p[distance=..2] unless items entity @s weapon.mainhand stick run item replace entity @s weapon.mainhand with stick[item_model="air",enchantments={"magic:mobs/hunter_base":1}] 1

execute if predicate magic:moving run tag @s[tag=!inAtk] add moving
execute if entity @s[tag=moving] run function magic:mobs/hunter/walk/walk_main

#stagger
execute if score @s magic.stagger >= @s magic.posture run function magic:mobs/hunter/stagger