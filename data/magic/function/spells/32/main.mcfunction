#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/32/fizzle

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
execute at @s if score @s slowcast.dist matches 1.. run function magic:spells/32/slowcast
execute at @s run function magic:spells/32/cycle
schedule function magic:spells/32/loop 1t append