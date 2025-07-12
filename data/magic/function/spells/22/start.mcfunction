scoreboard players operation #magicSearch magic.id = @s magic.id

#execute anchored eyes positioned ^ ^-0.4 ^ anchored feet run function animated_java:cutter/summon {args:{}}

execute anchored eyes positioned ^ ^-0.4 ^ anchored feet summon item_display run function magic:spells/22/setup_cutter

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet run tp @n[type=item_display,tag=newMagic,distance=..2] ~ ~ ~ ~ ~
tag @n[type=marker,tag=newMagic,distance=..2] remove newMagic

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.6

schedule function magic:spells/22/loop 1t append