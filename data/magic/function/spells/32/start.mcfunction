scoreboard players operation #magicSearch magic.id = @s magic.id

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated as @s summon item_display run function magic:spells/32/setup_skull

playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 2 0.8

schedule function magic:spells/32/loop 1t append