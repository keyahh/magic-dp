scoreboard players operation #magicSearch magic.id = @s magic.id

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated ~50 ~-45 summon marker run function magic:spells/41/setup_twinkling_star

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated ~ ~-45 summon marker run function magic:spells/41/setup_twinkling_star

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated ~-50 ~-45 summon marker run function magic:spells/41/setup_twinkling_star

playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2

schedule function magic:spells/41/loop 1t append