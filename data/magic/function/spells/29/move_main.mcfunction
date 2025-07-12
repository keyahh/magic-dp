scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

playsound minecraft:particle.soul_escape master @a ~ ~ ~ 5 0.9

# movement
scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 16.. run function magic:spells/29/move
execute if score @s magic.temp matches 300.. run function magic:spells/29/start_explode

# damage
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
tag @s add thisOrb
execute as @e[type=#magic:targets,distance=..3.3,predicate=!magic:match_id] unless score @s magic.iframe matches 1.. at @s run function magic:spells/29/distance_damage
execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=#magic:targets,distance=..2.5,predicate=!magic:match_id,dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] unless score @s magic.iframe matches 1.. as @n[type=marker,tag=thisOrb] run function magic:spells/29/start_explode
tag @s remove thisOrb
tag @n[type=#magic:magic_user,predicate=magic:match_id] remove thisPlayer