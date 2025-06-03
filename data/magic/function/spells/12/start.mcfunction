scoreboard players operation #magicSearch magic.id = @s magic.id

tag @s add hasBats

execute summon marker run function magic:spells/12/setup_anchor
execute summon marker run function magic:spells/12/setup_lead

execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat


schedule function magic:spells/12/loop 1t append