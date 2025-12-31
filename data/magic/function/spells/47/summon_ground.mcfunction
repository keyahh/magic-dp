execute if entity @e[distance=..1,type=block_display,tag=eqGround] run return fail

loot replace block 0 -64 0 container.0 mine ~ ~ ~ minecraft:netherite_pickaxe[enchantments={"minecraft:silk_touch":1}]
data modify storage magic:block block set from block 0 -64 0 Items[0].id

scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players operation #magicSearch magic.id = @s magic.id
execute align xyz summon block_display run function magic:spells/47/setup_ground with storage magic:block