tag @s add inAtk
scoreboard players set @s magic.atkCD 60
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..5] run function magic:mobs/lich/atk/choose_melee
execute unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..5] run function magic:mobs/lich/atk/choose_range