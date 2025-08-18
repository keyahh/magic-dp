effect give @s invisibility infinite 0 true
effect give @s resistance infinite 1 true

scoreboard players operation #magicSearch magic.id = @s magic.id

execute if entity @s[tag=phase1] run function magic:mobs/lich/phase1
execute if entity @s[tag=phase2] run function magic:mobs/lich/phase2

#walking
#execute unless entity @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id,distance=..0.01] unless entity @s[tag=stop] run tag @s add moving

tag @s add thisVehicle
execute on passengers if entity @s[tag=aj.lich.root] anchored eyes rotated as @n[type=wither_skeleton,tag=thisVehicle] positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0
execute on passengers if entity @s[type=item_display] store success entity @s OnGround byte 1 store success score @s test unless score @s test matches 1
tag @s remove thisVehicle

execute if predicate magic:moving run tag @s[tag=!stop] add moving
execute if entity @s[tag=moving] run function magic:mobs/lich/walk/walk_main

#tp @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] ~ ~ ~ ~ 0