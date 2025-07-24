scoreboard players operation #magicSearch magic.id = @s magic.id

execute summon marker run function magic:spells/41/setup_twinkling_star
execute anchored eyes positioned ^ ^-0.3 ^ anchored feet run tp @n[type=marker,tag=newMagic,distance=..2] ~ ~ ~30 ~ ~-45
tag @n[type=marker,tag=newMagic,distance=..2] remove newMagic

execute summon marker run function magic:spells/41/setup_twinkling_star
execute anchored eyes positioned ^ ^-0.3 ^ anchored feet run tp @n[type=marker,tag=newMagic,distance=..2] ~ ~ ~ ~ ~-45
tag @n[type=marker,tag=newMagic,distance=..2] remove newMagic

execute summon marker run function magic:spells/41/setup_twinkling_star
execute anchored eyes positioned ^ ^-0.3 ^ anchored feet run tp @n[type=marker,tag=newMagic,distance=..2] ~ ~ ~ ~-30 ~-45
tag @n[type=marker,tag=newMagic,distance=..2] remove newMagic

schedule function magic:spells/41/loop 1t append