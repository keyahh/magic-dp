scoreboard players operation #magicSearch magic.id = @s magic.id

execute anchored eyes positioned ^ ^-0.25 ^0.25 anchored feet rotated as @s summon item_display run function magic:spells/44/setup_pierce
playsound entity.evoker.cast_spell master @a ~ ~ ~ 1.5 2
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1.5 2
schedule function magic:spells/44/loop 1t append