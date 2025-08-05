tag @s add inAtk
scoreboard players set @s magic.atkCD 50

execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..6] run function magic:mobs/hunter/atk/choose_melee_1
execute unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..6] run function magic:mobs/hunter/atk/choose_range_1