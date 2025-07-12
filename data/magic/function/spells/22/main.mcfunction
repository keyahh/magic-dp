scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run return run function magic:spells/22/fizzle

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/22/slowcast

schedule function magic:spells/22/loop 1t append