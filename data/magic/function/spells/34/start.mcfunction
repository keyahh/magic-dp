scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated as @s summon marker run function magic:spells/34/setup_anchor

execute positioned ~ ~ ~ summon marker run function magic:spells/34/setup_particle
execute positioned ~ ~ ~ summon marker run function magic:spells/34/setup_particle
execute positioned ~ ~ ~ summon marker run function magic:spells/34/setup_particle
execute positioned ~ ~ ~ summon marker run function magic:spells/34/setup_particle
execute positioned ~ ~ ~ summon marker run function magic:spells/34/setup_particle
execute positioned ~ ~ ~ summon marker run function magic:spells/34/setup_particle
execute positioned ~ ~ ~ summon marker run function magic:spells/34/setup_particle
execute positioned ~ ~ ~ summon marker run function magic:spells/34/setup_particle
execute positioned ~ ~ ~ summon marker run function magic:spells/34/setup_particle

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.5 0.85
schedule function magic:spells/34/loop 1t append