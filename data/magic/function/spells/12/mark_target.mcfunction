execute store result score @s magic.uuid run data get entity @s UUID[0]
scoreboard players operation #magicSearch magic.uuid = @s magic.uuid
scoreboard players reset #magicRange magic.temp
effect give @s glowing 1 0 true