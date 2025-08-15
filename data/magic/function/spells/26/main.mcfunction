#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/26/fizzle

execute rotated ~ ~90 run function magic:spells/26/particles

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/26/slowcast

schedule function magic:spells/26/loop 1t append