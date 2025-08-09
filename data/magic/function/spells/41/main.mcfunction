execute if score @s magic.atkCD matches 1.. run function magic:spells/41/float

#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/41/fizzle

#slowcast
execute unless score @s[tag=!stopHoming] magic.atkCD matches 1.. run function magic:spells/41/target
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
execute unless score @s magic.atkCD matches 1.. run function magic:spells/41/slowcast

schedule function magic:spells/41/loop 1t append