scoreboard players operation #magicSearch magic.id = @s magic.id

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated as @s summon item_display run function magic:spells/22/setup_cutter

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.6

schedule function magic:spells/22/loop 1t append