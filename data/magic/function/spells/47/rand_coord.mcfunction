#generate random X-Z coordinate, Y coordinate depends on anchor

#ran as anchor

scoreboard players operation #magicTemp x = @s x
scoreboard players operation #magicTemp z = @s z

execute store result score #magicRand magic.temp run random value -15..15
scoreboard players operation #magicTemp x += #magicRand magic.temp

execute store result score #magicRand magic.temp run random value -15..15
scoreboard players operation #magicTemp z += #magicRand magic.temp

execute store result storage magic:coord x int 1 run scoreboard players get #magicTemp x
execute store result storage magic:coord z int 1 run scoreboard players get #magicTemp z

function magic:spells/47/check_coord with storage magic:coord