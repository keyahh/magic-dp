scoreboard players reset #floorRange magic.temp

loot replace block 0 -64 0 container.0 mine ~ ~ ~ minecraft:netherite_pickaxe[enchantments={"minecraft:silk_touch":1}]
data modify storage magic:block block set from block 0 -64 0 Items[0].id

scoreboard players operation #magicSearch magic.id = @s magic.id
execute align xyz positioned ~ ~1 ~ run function magic:spells/16/summon_block with storage magic:block