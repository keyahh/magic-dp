#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/21/fizzle

function magic:spells/21/particles

#slowcast
execute if score @s slowcast.maxDist matches ..54 run function magic:spells/21/angle

scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/21/slowcast

schedule function magic:spells/21/loop 1t append