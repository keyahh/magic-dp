execute if entity @s[type=#magic:can_bleed] run particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.3 0.3 0.3 1 15 force
damage @s 25 magic:ignore_cooldown by @n[type=#magic:magic_user,tag=thisPlayer]
execute if entity @s[type=#magic:can_bleed] run scoreboard players add @s magic.bleed 200
scoreboard players add @s magic.stagger 4