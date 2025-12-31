execute as 0b91-0000-0c84-0000-006a00000051 run function magic:clock_main

execute as @a[tag=!hasWandUI] if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{is_wand:1}] at @s run function magic:wand/open
execute as @e[type=chest_minecart,tag=magicUI] at @s run function magic:wand/minecart
execute as @a[tag=hasWandUI] at @s run function magic:wand/wand_main

execute as @e[type=block_display,tag=cloud] at @s run function magic:spells/13/cloud/cloud_main
execute as @e[type=block_display,tag=rippleBlock] at @s run function magic:spells/16/block_main
execute as @e[type=item_display,tag=shieldAnchor] at @s run function magic:spells/8/anchor_main