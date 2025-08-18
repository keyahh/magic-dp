scoreboard players add @s magic.temp 1

execute if score @s magic.temp matches 20.. run function magic:spells/39/fizzle

execute unless block ^ ^ ^0.5 #magic:passable run function magic:spells/39/fizzle
execute if block ^ ^ ^0.5 #magic:passable run tp @s ^ ^ ^0.5
function magic:spells/39/particles
function magic:spells/39/hitbox

schedule function magic:spells/39/flame_loop 1t append