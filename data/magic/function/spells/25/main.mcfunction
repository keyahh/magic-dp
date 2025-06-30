scoreboard players remove @s[scores={magic.temp=1..}] magic.temp 1
execute if score @s magic.temp matches 1 run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.9
execute if score @s magic.temp matches 1.. run return run schedule function magic:spells/25/loop 1t append

#hit block
execute if entity @s[tag=hitBlock] run function magic:spells/25/in_block

#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/25/fizzle

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/25/slowcast

schedule function magic:spells/25/loop 1t append