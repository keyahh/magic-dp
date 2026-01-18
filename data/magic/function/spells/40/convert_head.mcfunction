scoreboard players add #spellID magic.spellID 1
scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = #spellID magic.spellID

function magic:spells/40/update_id
execute summon marker run function magic:spells/40/summon/setup_lead

tag @s add wormHead
tag @s remove wormSeg
execute on passengers run enchant @s magic:mobs/worm_head_base 1
data merge entity @s {item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"magic:worm_head"}}}
playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 2 0