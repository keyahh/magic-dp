scoreboard players operation #magicSearch magic.id = @s magic.id

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated as @s summon marker run function magic:spells/26/setup_piercer

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 2 1.5

schedule function magic:spells/26/loop 1t append