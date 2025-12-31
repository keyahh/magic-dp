scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
execute positioned ~ ~2 ~ summon item_display run function magic:spells/47/setup_ring

scoreboard players set @s magic.hurtCD 15

execute positioned ~-15 ~-3 ~-15 as @e[type=#magic:targets,dx=29,dy=6,dz=29] run damage @s 14 magic:ignore_cooldown