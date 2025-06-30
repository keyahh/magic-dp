scoreboard players operation @s magic.id = #magicSearch magic.id

scoreboard players set @s slowcast.dist 8
scoreboard players set @s slowcast.maxDist 12

tag @s add thisCrystal
$execute as @n[type=#magic:magic_user,predicate=magic:match_id,distance=..2] at @s anchored eyes positioned ^ ^-0.3 ^ anchored feet run tp @n[type=marker,tag=thisCrystal,distance=..2] ~ ~ ~ facing ^$(x) ^$(y) ^3
tag @s remove thisCrystal

tag @s add magic
#tag @s add newMagic
tag @s add crystalBlast
tag @s add projSpell