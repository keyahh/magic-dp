playsound minecraft:item.spear.lunge_1 master @a ~ ~ ~ 1 0.6
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players operation #magicSearch magic.id = @s magic.id
execute summon item_display run function magic:spells/45/setup_rend
schedule function magic:spells/45/loop 1t append