scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
execute as @e[type=marker,distance=..2,tag=darkSpiritParticle,predicate=magic:match_spell] run function magic:spells/34/step

#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run return run function magic:spells/34/fizzle

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/34/slowcast

schedule function magic:spells/34/loop 1t append