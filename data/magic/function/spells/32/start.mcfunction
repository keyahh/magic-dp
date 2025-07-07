scoreboard players operation #magicSearch magic.id = @s magic.id

execute summon item_display run function magic:spells/32/setup_skull
execute anchored eyes positioned ^ ^-0.3 ^ anchored feet run tp @n[type=item_display,tag=newMagic,distance=..2] ~ ~ ~ ~ ~
tag @n[type=item_display,tag=newMagic,distance=..2] remove newMagic

schedule function magic:spells/32/loop 1t append