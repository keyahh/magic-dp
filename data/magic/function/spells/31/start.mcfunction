scoreboard players operation #magicSearch magic.id = @s magic.id
damage @s[tag=!boss] 4 starve by @s

scoreboard players add @s magic.bloodSlashSide 1
execute if score @s magic.bloodSlashSide matches 3.. run scoreboard players set @s magic.bloodSlashSide 1
scoreboard players operation #bloodSlashSide magic.bloodSlashSide = @s magic.bloodSlashSide

execute anchored eyes positioned ^ ^-0.2 ^ anchored feet rotated as @s summon item_display run function magic:spells/31/setup_slash

playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 2

schedule function magic:spells/31/loop 1t append