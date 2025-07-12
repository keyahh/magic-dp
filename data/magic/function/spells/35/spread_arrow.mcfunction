data merge entity @s {player:0b,damage:10d,PierceLevel:1b,Tags:["newArrow"]}

execute store result storage magic:spell x float 0.01 run random value -250..250
execute store result storage magic:spell z float 0.01 run random value -250..250

scoreboard players operation @s magic.spellID = #magicSearch magic.spellID

function magic:spells/35/tp with storage magic:spell