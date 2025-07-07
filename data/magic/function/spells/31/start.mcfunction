scoreboard players operation #magicSearch magic.id = @s magic.id

scoreboard players add @s magic.bloodSlashSide 1
execute if score @s magic.bloodSlashSide matches 3.. run scoreboard players set @s magic.bloodSlashSide 1
scoreboard players operation #bloodSlashSide magic.bloodSlashSide = @s magic.bloodSlashSide

execute summon item_display run function magic:spells/31/setup_slash

execute anchored eyes positioned ^ ^-0.3 ^ anchored feet run tp @n[type=item_display,tag=newMagic,distance=..2] ~ ~ ~ ~ ~
tag @n[type=marker,tag=newMagic,distance=..2] remove newMagic

playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 2

schedule function magic:spells/31/loop 1t append