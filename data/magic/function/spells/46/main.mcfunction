#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/46/fizzle

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
scoreboard players operation #magicSearch magic.id = @s magic.id
function magic:spells/46/slowcast

schedule function magic:spells/46/loop 1t append