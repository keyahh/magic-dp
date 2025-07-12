particle cloud ~ ~ ~ 1 0 1 0 10 force

scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 5 run function magic:spells/35/summon_arrow

#max lifespan
scoreboard players remove @s slowcast.maxDist 1
execute if score @s slowcast.maxDist matches ..0 run function magic:spells/35/fizzle

#move
function magic:spells/35/move

schedule function magic:spells/35/loop 1t append