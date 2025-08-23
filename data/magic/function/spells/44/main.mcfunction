#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches 4 run function magic:spells/44/fizzle
execute if score @s slowcast.maxDist matches -2 run kill @s

schedule function magic:spells/44/loop 1t append
execute unless score @s slowcast.maxDist matches 1.. run return -1

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/44/slowcast