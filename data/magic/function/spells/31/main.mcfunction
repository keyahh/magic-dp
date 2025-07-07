#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/31/fizzle

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/31/slowcast

schedule function magic:spells/31/loop 1t append