execute if entity @s[tag=shield] run scoreboard players reset #boltSegRange magic.temp
execute if entity @s[tag=shield] run scoreboard players reset #boltJoint magic.temp
damage @s[predicate=!magic:in_water] 40 lightning_bolt by @n[type=#magic:magic_user,tag=thisPlayer]
damage @s[predicate=magic:in_water] 60 lightning_bolt by @n[type=#magic:magic_user,tag=thisPlayer]
scoreboard players add @s magic.stagger 10