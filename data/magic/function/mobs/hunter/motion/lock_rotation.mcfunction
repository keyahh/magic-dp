#ran by mage_hunter model

scoreboard players operation #magicSearch magic.id = @s magic.id

execute on vehicle store result entity @s Rotation[0] float 0.1 run scoreboard players get @s magic.aCD