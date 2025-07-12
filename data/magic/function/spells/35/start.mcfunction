scoreboard players operation #magicSearch magic.id = @s magic.id

tag @s add thisPlayer
scoreboard players add #spellID magic.spellID 1
execute rotated ~ 0 positioned ^ ^5 ^1 summon marker run function magic:spells/35/setup_arrow
tag @s remove thisPlayer

schedule function magic:spells/35/loop 1t append