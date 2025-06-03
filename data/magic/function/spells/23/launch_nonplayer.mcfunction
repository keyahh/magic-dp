tag @s add thisEntity
execute facing entity @n[type=#magic:magic_user,tag=thisPlayer,distance=..6] feet rotated ~180 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^2 summon area_effect_cloud run data modify entity @e[type=#magic:targets,tag=thisEntity,limit=1] Motion set from entity @s Pos
tag @s remove thisEntity