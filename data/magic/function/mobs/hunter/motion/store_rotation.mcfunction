#ran by mage hunter model

scoreboard players operation #magicSearch magic.id = @s magic.id
execute on vehicle run rotate @s facing entity @p[gamemode=!creative,gamemode=!spectator]
execute on vehicle store result score @s magic.aCD run data get entity @s Rotation[0] 10