scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1

execute positioned ~ ~2.5 ~ rotated as @s summon marker run function magic:spells/29/setup_anchor
execute positioned ~ ~2.5 ~ summon marker run function magic:spells/29/setup_particle
execute positioned ~ ~2.5 ~ summon marker run function magic:spells/29/setup_particle
execute positioned ~ ~2.5 ~ summon marker run function magic:spells/29/setup_particle
execute positioned ~ ~2.5 ~ summon marker run function magic:spells/29/setup_particle
execute positioned ~ ~2.5 ~ summon marker run function magic:spells/29/setup_particle
execute positioned ~ ~2.5 ~ summon marker run function magic:spells/29/setup_particle
execute positioned ~ ~2.5 ~ summon marker run function magic:spells/29/setup_particle
execute positioned ~ ~2.5 ~ summon marker run function magic:spells/29/setup_particle
execute positioned ~ ~2.5 ~ summon marker run function magic:spells/29/setup_particle

playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 2 1.5
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 1
playsound minecraft:entity.skeleton.converted_to_stray master @a ~ ~ ~ 2 0.7
schedule function magic:spells/29/loop 1t append