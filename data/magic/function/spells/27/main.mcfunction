scoreboard players remove @s slowcast.time 1
execute if score @s slowcast.time matches ..0 run function magic:spells/27/explode

function magic:trig/arch
execute store result storage magic:slowcast grav float 0.00001 run scoreboard players get #temp slowcast

scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/27/slowcast with storage magic:slowcast

schedule function magic:spells/27/loop 1t append