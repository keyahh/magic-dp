scoreboard players operation @s magic.id = #magicSearch magic.id

data modify entity @s Owner set from entity @n[type=#magic:magic_user,predicate=magic:match_id,distance=..0.1] UUID
item replace entity @s weapon.offhand with poisonous_potato[enchantments={"magic:mobs/wolf_base":1}] 1
data merge entity @s {drop_chances:{offhand:0.000}}

tag @s add magic
tag @s add conjuration
tag @s add wolfConjure