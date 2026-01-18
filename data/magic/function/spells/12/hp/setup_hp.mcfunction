playsound minecraft:entity.silverfish.hurt master @a ~ ~ ~ 1 1.5

tag @s add magic
tag @s add batHp
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 4

rotate @s facing entity @n[type=#magic:magic_user,predicate=magic:match_id] feet

#x rotation
execute store result score #rotOffset magic.temp run data get entity @s Rotation[0]
execute store result score #offset magic.temp run random value 35..60
execute store result score #sign magic.temp run random value 0..1
execute if score #sign magic.temp matches 1 run scoreboard players operation #offset magic.temp *= #-1 const
scoreboard players operation #rotOffset magic.temp += #offset magic.temp
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rotOffset magic.temp

#y rotation
execute store result score #rotOffset magic.temp run data get entity @s Rotation[1]
execute store result score #offset magic.temp run random value -45..-25
scoreboard players operation #rotOffset magic.temp += #offset magic.temp
execute store result entity @s Rotation[1] float 1 run scoreboard players get #rotOffset magic.temp

schedule function magic:spells/12/hp/loop 1t append