scoreboard players operation #magicSearch magic.id = @s magic.id

execute store result score #angle magic.temp run data get entity @s Rotation[1] -1
execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated as @s summon item_display run function magic:spells/27/setup_fireball

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.7
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 3 0.8

schedule function magic:spells/27/loop 1t append