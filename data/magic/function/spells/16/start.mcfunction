scoreboard players operation #magicSearch magic.id = @s magic.id

execute summon marker run function magic:spells/16/setup_ripple
execute anchored eyes positioned ^ ^ ^ anchored feet run tp @n[type=marker,tag=newMagic,distance=..2] ~ ~ ~ ~ ~
tag @n[type=marker,tag=newMagic,distance=..2] remove newMagic

schedule function magic:spells/16/loop 1t append