tag @s add tethered
execute store result score @s magic.uuid run data get entity @s UUID[0]
scoreboard players operation #magicSearch magic.uuid = @s magic.uuid