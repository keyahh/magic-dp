scoreboard players operation #magicSearch magic.id = @s magic.id

execute summon marker run function magic:spells/26/setup_piercer
execute anchored eyes positioned ^ ^-0.3 ^ anchored feet run tp @e[type=marker,tag=newMagic,distance=..2] ~ ~ ~ ~ ~
rotate @n[type=marker,tag=newMagic,tag=windParticles,distance=..2] ~90 ~
tag @e[type=marker,tag=newMagic,distance=..2] remove newMagic

schedule function magic:spells/26/loop 1t append