tag @s remove disarmItem
tp @s ~ ~1 ~
data modify entity @s Item set from storage magic:data Item
data remove storage magic:data Item

tag @s add thisItem
execute facing entity @n[type=#magic:magic_user,predicate=magic:match_id] eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^0.6 summon marker run function magic:spells/3/motion
tag @s remove thisItem