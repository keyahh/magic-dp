#for holding right click with a wand

particle minecraft:enchant ~ ~ ~ 0 0 0 1 2 normal

data modify storage magic:data history set from entity @s SelectedItem.components."minecraft:custom_data".history
title @s actionbar {"nbt":"history","storage":"magic:data","color":"yellow"}

#interrupt
execute unless score @s magic.castingTime matches 1.. run scoreboard players reset @s magic.dmgTaken
execute store result score #spellLength magic.temp if data storage magic:data history

scoreboard players add @s magic.castingTime 1

advancement revoke @s only magic:input/right_click
advancement revoke @s only magic:input/rclick_cd

scoreboard players set @s magic.rclickCD 2