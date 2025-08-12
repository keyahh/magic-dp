effect give @s invisibility infinite 0 true
effect give @s resistance infinite 1 true

#effect give @s[tag=pause] slowness 1 255 true
#rotate @s[tag=pause] -90 0
#execute if entity @p[distance=..20,gamemode=survival] run tag @s remove pause

scoreboard players operation #magicSearch magic.id = @s magic.id
#execute as @e[type=marker,tag=fireTrail,predicate=magic:match_id] at @s run function magic:mobs/hunter/atk/fire_trail_main

execute if score @s magic.iframe matches 1.. run scoreboard players remove @s magic.iframe 1

tag @s add thisVehicle
execute on passengers if entity @s[tag=aj.mage_hunter.root] anchored eyes rotated as @n[type=husk,tag=thisVehicle] positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0
execute on passengers if entity @s[type=item_display] store success entity @s OnGround byte 1 store success score @s test unless score @s test matches 1
tag @s remove thisVehicle

#phases
#execute if score @s[tag=!phase2] magic.health matches 200.. store result score @s magic.health run data get entity @s Health
#execute if score @s[tag=!phase2,tag=!inTransition] magic.health matches ..200 run function magic:mobs/hunter/change_phase

execute if entity @s[tag=phase1] run function magic:mobs/hunter/phase1
#execute if entity @s[tag=phase2] run function magic:mobs/hunter/phase2

#walking
execute if predicate magic:moving run tag @s[tag=!inAtk] add moving
execute if entity @s[tag=moving] run function magic:mobs/hunter/walk/walk_main