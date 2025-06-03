execute as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] run function animated_java:wizard/variants/hurt/apply
tag @s add magic.hurt
scoreboard players set @s magic.hurtCD 10
playsound minecraft:entity.evoker.hurt hostile @a ~ ~ ~ 1 1