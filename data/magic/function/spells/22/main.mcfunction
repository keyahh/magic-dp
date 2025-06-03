scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 30.. run function magic:spells/22/fizzle

#slowcast
scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/22/slowcast