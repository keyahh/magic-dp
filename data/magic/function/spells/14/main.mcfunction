#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/14/fizzle

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
scoreboard players operation #magicSearch magic.id = @s magic.id
execute rotated as @n[type=#magic:magic_user,predicate=magic:match_id,tag=!magic] run function magic:spells/14/slowcast

schedule function magic:spells/14/loop 1t append