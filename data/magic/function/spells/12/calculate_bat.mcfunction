scoreboard players reset @s magic.batTime

scoreboard players operation #a math = @s theta
scoreboard players operation #b math = @s phi
scoreboard players operation #r math = @s radius

function magic:trig/sphere_coord
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
execute at @e[type=marker,tag=batSwarmLead,predicate=magic:match_spell,limit=1,sort=arbitrary] positioned ~ ~ ~ run function magic:spells/12/tp_bat with storage magic:sphere