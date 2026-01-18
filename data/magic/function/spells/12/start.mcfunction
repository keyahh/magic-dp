scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1
execute anchored eyes positioned ^ ^-0.3 ^1.5 anchored feet run particle cloud ~ ~ ~ 0.5 0.5 0.5 0 20

scoreboard players reset #magicSearch magic.uuid
scoreboard players set #magicRange magic.temp 120
execute anchored eyes positioned ^ ^ ^ anchored feet run function magic:spells/12/raycast

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
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat
execute positioned ~ ~1 ~ summon bat run function magic:spells/12/setup_bat

schedule function magic:spells/12/loop 1t append