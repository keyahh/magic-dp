scoreboard players operation #magicSearch magic.id = @s magic.id

tp @s ~ ~ ~
particle explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 2

tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer

execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#magic:targets,dx=0.5,dy=0.5,dz=0.5,distance=..10] unless score @s magic.iframe matches 1.. run damage @s 12 player_attack by @n[type=#magic:magic_user,tag=thisPlayer]

tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer

function magic:spells/37/fizzle