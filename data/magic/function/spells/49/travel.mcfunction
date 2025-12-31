function magic:trig/arch
execute store result storage magic:slowcast grav float 0.00001 run scoreboard players get #temp slowcast

scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/49/slowcast with storage magic:slowcast