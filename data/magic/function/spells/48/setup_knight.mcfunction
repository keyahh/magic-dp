execute rotated ~ ~ summon husk run function magic:spells/48/setup_base
ride @s mount @n[distance=..1,type=husk,tag=newBase]
execute on vehicle run tag @s remove newBase

scoreboard players operation @s magic.id = #magicSearch magic.id