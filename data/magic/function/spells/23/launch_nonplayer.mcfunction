tag @s add thisEntity
execute facing entity @n[type=#magic:magic_user,tag=thisPlayer,distance=..6] feet rotated ~180 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^2 summon marker run function magic:spells/23/motion_marker
tag @s remove thisEntity