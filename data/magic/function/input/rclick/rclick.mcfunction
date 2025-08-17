title @s actionbar {"nbt":"history","storage":"magic:data","color":"yellow"}
scoreboard players add @s magic.castingTime 1

advancement revoke @s only magic:input/right_click
advancement revoke @s only magic:input/rclick_cd

scoreboard players set @s magic.rclickCD 2