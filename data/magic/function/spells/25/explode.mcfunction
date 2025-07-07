playsound minecraft:entity.breeze.hurt master @a ~ ~ ~ 3 1
playsound minecraft:item.totem.use master @a ~ ~ ~ 2.5 2
scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute as @e[type=#magic:targets,distance=..4,predicate=!magic:match_id] unless score @s magic.iframe matches 1.. at @s run function magic:spells/25/explosion_damage
tag @n[type=#magic:magic_user,predicate=magic:match_id] remove thisPlayer
particle minecraft:trial_spawner_detection ~ ~ ~ 0 0 0 0.3 25
kill @s