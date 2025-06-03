scoreboard players operation #magicSearch magic.id = @s magic.id

execute summon marker run function magic:spells/5/setup_light
execute anchored eyes positioned ^ ^-0.3 ^ anchored feet run tp @n[type=marker,tag=newMagic,distance=..2] ~ ~ ~ ~ ~

tag @n[type=marker,tag=newMagic,distance=..2] remove newMagic
schedule function magic:spells/5/loop 1t append