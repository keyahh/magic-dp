scoreboard players operation #magicSearch magic.id = @s magic.id

execute unless entity @n[type=#magic:magic_user,predicate=magic:match_id,distance=..6] run function magic:spells/8/remove_this

kill @e[type=experience_orb,distance=..3,nbt={Age:0s}]