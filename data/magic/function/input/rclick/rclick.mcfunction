data modify storage magic:data history set from entity @s SelectedItem.components."minecraft:custom_data".history
title @s actionbar {"nbt":"history","storage":"magic:data","color":"yellow"}

#deflecting
#advancement revoke @s only magic:deflect_tick
#advancement revoke @s only magic:deflect_cd

#execute unless score @s magic.castingTime matches 1.. unless score @s magic.spellDeflectCD matches 1.. unless score @s magic.spellDeflectFrame matches 1.. run scoreboard players set @s magic.spellDeflectFrame 4

scoreboard players add @s magic.castingTime 1

advancement revoke @s only magic:input/right_click
advancement revoke @s only magic:input/rclick_cd

scoreboard players set @s magic.rclickCD 2