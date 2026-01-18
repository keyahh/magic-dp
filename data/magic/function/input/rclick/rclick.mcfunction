#for holding right click with a wand

particle minecraft:enchant ~ ~ ~ 0 0 0 1 2 normal

data modify storage magic:data history set from entity @s SelectedItem.components."minecraft:custom_data".history
title @s actionbar {"nbt":"history","storage":"magic:data","color":"yellow"}

#interrupt
scoreboard players reset #spellSize magic.temp
execute unless score @s magic.castingTime matches 1.. run scoreboard players set @s magic.breakMin 100
execute unless score @s magic.castingTime matches 1.. run scoreboard players reset @s magic.dmgTaken
execute if score @s magic.breakMin matches ..0 run scoreboard players set @s magic.breakMin 1
#tellraw @s {"score":{"name":"@s","objective":"magic.breakMin"},"color":"yellow"}
execute if score @s magic.dmgTaken >= @s magic.breakMin run function magic:casting/force_release

scoreboard players add @s magic.castingTime 1

advancement revoke @s only magic:input/right_click
advancement revoke @s only magic:input/rclick_cd

scoreboard players set @s magic.rclickCD 2