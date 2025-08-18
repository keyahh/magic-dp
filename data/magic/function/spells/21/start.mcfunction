scoreboard players operation #magicSearch magic.id = @s magic.id

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated as @s summon marker run function magic:spells/21/setup_flames

schedule function magic:spells/21/loop 1t append
playsound entity.ender_dragon.shoot master @a ~ ~ ~ 2 0.8