scoreboard players reset @s magic.temp

scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
execute summon arrow run function magic:spells/35/spread_arrow
execute summon arrow run function magic:spells/35/spread_arrow
execute summon arrow run function magic:spells/35/spread_arrow
execute summon arrow run function magic:spells/35/spread_arrow

scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @e[type=arrow,tag=newArrow,distance=..2] run data modify entity @s Owner set from entity @n[type=#magic:magic_user,predicate=magic:match_id]
tag @e[type=arrow,tag=newArrow,distance=..2] remove newArrow