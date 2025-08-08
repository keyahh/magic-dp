execute if entity @s[tag=!phase2] run return -1

scoreboard players operation #magicSearch magic.id = @s magic.id
execute summon marker run function magic:mobs/hunter/atk/setup_fire_trail