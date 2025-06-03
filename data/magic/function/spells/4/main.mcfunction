scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 50.. run function magic:spells/4/hit_block

scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/4/slowcast