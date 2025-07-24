scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #magicSearch magic.spellID

scoreboard players set @s slowcast.dist 3

tag @s add magic
tag @s add ruinStar
tag @s add ruinStarProj

execute store result storage magic:data bullet.x double 0.1 run random value -10..10
execute store result storage magic:data bullet.y double 0.1 run random value -10..10
execute store result storage magic:data bullet.z double 0.1 run random value -10..10

function magic:spells/38/proj/random_rotate with storage magic:data bullet

#function animated_java:ruin_star/animations/expand/play
function animated_java:ruin_star/animations/spin/play